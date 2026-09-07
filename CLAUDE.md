# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

**ISP Selfcare** — a customer self-care app for an ISP, built with Flutter and
Clean Architecture. Dart SDK `^3.11.0`. Package name `isp_selfcare`, application
id `com.ideawaves.ispselfcare`.

Implemented from the **Selfcare Phone v2** design, whose source bundle lives in
[`isp-self-service-mobile-app/`](isp-self-service-mobile-app/). When changing a
screen, read the corresponding block of
`isp-self-service-mobile-app/project/Selfcare Phone v2.dc.html` first — it is
the specification, including exact spacing, type sizes and colour steps.

## Commands

### Running (three flavors)
```bash
flutter run --flavor development --target lib/main_development.dart  # mocked data, no backend
flutter run --flavor staging     --target lib/main_staging.dart
flutter run --flavor production  --target lib/main_production.dart
```

The self-care API does not exist yet. Staging and production resolve to an
unroutable placeholder; supply a real one with
`--dart-define=API_BASE_URL=https://…` (see `lib/core/env/api_base_url.dart`).

### First-time setup
```bash
flutter pub get
dart run build_runner build
flutter gen-l10n
./setup.sh   # installs git hooks (commit-msg + branch-name enforcement)
```

### Code generation
```bash
dart run build_runner build   # after touching freezed/injectable/retrofit/json code
dart run build_runner watch   # continuous
flutter gen-l10n              # after editing lib/l10n/arb/*.arb
```
Generated files (`*.g.dart`, `*.freezed.dart`, `injector.config.dart`,
`*.gr.dart`, `assets.gen.dart`, `lib/l10n/gen/`) are checked in and excluded
from analysis. Do not hand-edit them.

**`build.yaml` matters.** Two settings there are load-bearing:
- `field_rename: snake` globally. Annotating a freezed class with
  `@JsonSerializable(fieldRename:)` does **not** work — json_serializable reads
  the abstract class, finds no fields, and emits an *empty* deserialiser with no
  error. Override one field with `@JsonKey(name: ...)`.
- `json_serializable runs_before retrofit_generator`. Otherwise retrofit cannot
  see `toJson()` yet and emits `final _data = request;` instead of
  `request.toJson()`.

### Testing / lint
```bash
flutter test
flutter analyze
```

## Architecture

Four top-level directories under `lib/`, strict inward dependency rule:

- **`domain/`** — `entity/` (freezed, all `part of base_entity.dart`),
  `repository/` (abstract), `use_cases/` (one operation each, mixing in
  `BaseUseCase<Output>` / `BaseUseCaseWithParams<Output, Params>`; multi-argument
  use cases take a **record** rather than a bespoke params class).
- **`data/`** — `models/` (DTOs, `part of base_request.dart` /
  `base_response.dart`), `remapper/` (DTO → entity extensions),
  `data_source/` (interface + `mock/` + `remote/`), `repository_impl/`.
- **`presentation/`** — `screen/` (one folder per screen, cubit under
  `cubit/`), `theme/`, `widgets/industry/` (the design system),
  `widgets/util/`, `route/`.
- **`core/`** — `injector/`, `env/`, `state_status/`, `error/`, `extensions/`,
  `constants/`.

### Flavor-based data mocking (key pattern)

Data sources are obtained through an **Abstract Factory**, so the flavour, not
the repository, decides mocked vs. live:

- `DataSourceFactory` → `createAuthDataSource()`, `createAccountDataSource()`,
  `createBillingDataSource()`, `createPackageDataSource()`,
  `createNetworkDataSource()`, `createSupportDataSource()`, `createUserDataSource()`.
- [`data_source_provider.dart`](lib/data/data_source/base/factory/data_source_provider.dart)
  binds `MockDataSourceFactory` for `@Environment(development)` and
  `RemoteDataSourceFactory` for staging/production.
- Repository impls take `DataSourceFactory` and call `factory.createXDataSource()`.
- **Adding a data source:** interface + `mock/` + `remote/`, then wire into
  `DataSourceFactory`, both factories, and `DataSourceProvider`.

Mock data lives in one place —
[`selfcare_fixtures.dart`](lib/data/data_source/mock_data/selfcare_fixtures.dart)
— so every screen tells the same story. Mock data sources are `@LazySingleton`
so in-session mutations (paying an invoice, blocking a device, redeeming points)
persist across navigation.

### The signed-in shell

`DashboardScreen` is one persistent `Scaffold` containing masthead, offline
strip, nested `AutoRouter`, bottom tabs and drawer. **Every** post-login screen
is a child route of `DashboardRoute`.

- The **selected connection** is app-level state in `ConnectionsCubit`
  (`@singleton`). Nearly every screen is scoped to it; screens that load
  per-connection data key their `BlocProvider` on `connection.id` so switching
  lines rebuilds them.
- A screen and its tab are not the same thing —
  [`ShellDestinations`](lib/presentation/screen/dashboard/shell_destinations.dart)
  maps route → tab so pay/receipt/autopay all keep *Bill* lit.

### Design system

- [`AppPalette`](lib/presentation/theme/base/app_palette.dart) carries the
  `Industry` tonal ramps verbatim, indexed by design-token step
  (`palette.accentRamp[900]`). Reach for it via `context.palette`; `context.colors`
  is the semantic layer, `AppFonts` the type.
- [`widgets/industry/`](lib/presentation/widgets/industry/) is one widget per CSS
  class. Prefer these over raw `Container`s — square corners, hairline borders
  and the blueprint registration marks are the whole look.
- Icons are the design's own SVG path strings (`AppIcons`) rendered by `DsIcon`.

### State handling

Cubit states are freezed classes holding a `BaseStatus`
(`initial`/`loading`/`success`/`failure(ResponseError)`), plus screen-specific
fields. Forms that save behind a button keep a `draft` beside the saved value so
the button can say there is nothing to save.

### Localisation

English + Bengali, ~500 keys in `lib/l10n/arb/`, accessed via `context.l10n`.
Keys were extracted from the design's own bilingual table.

- ARB keys must not collide with Dart keywords or with `AppLocalizations`
  members (`of`, `delegate`, `supportedLocales`, …) — the generated code will
  not compile. Suffix them (`switchLabel`, `ofWord`).
- Anything with a runtime value uses a placeholder message, never string
  concatenation around a hardcoded example.
- **Server data is not localised.** Connection nicknames, ticket subjects and
  plan names come from the operator's database.

Money is `context.l10n.currencySymbol` + `en_US`-grouped digits
([`money_extension.dart`](lib/core/extensions/money_extension.dart)); dates go
through [`date_format.dart`](lib/presentation/widgets/util/date_format.dart).
Both pin `en` deliberately — the design shows Latin digits in both languages.

## Testing conventions

`test/` mirrors `lib/`. Each layer is tested by mocking the layer directly
beneath it (`mocktail`). No real network/storage/DI. Use
`registerFallbackValue(...)` in `setUpAll` for custom types passed to `any()`.

## Git conventions (enforced by hooks after `./setup.sh`)

- **Branches:** `feat/`, `fix/`, `refactor/`, `chore/` (except `main`/`develop`/`master`).
- **Commits:** Conventional Commits — `type: description` (≥3 chars).
- CI (`.github/workflows/main.yaml`) runs on `main`.
