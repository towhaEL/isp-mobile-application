# ISP Selfcare

Customer self-care app for an ISP: see what each connection owes, pay it,
change plan, manage the router, run a speed test, and raise a support ticket.
Flutter, Clean Architecture, English and Bengali.

Built from the **Selfcare Phone v2** design (Claude Design → `Industry` design
system). The design bundle is kept in
[`isp-self-service-mobile-app/`](isp-self-service-mobile-app/) so the
implementation can be read side by side with its source.

---

## Running it

The app has three flavours. **`development` needs no backend at all** — it runs
entirely against the fixtures in
[`lib/data/data_source/mock_data/selfcare_fixtures.dart`](lib/data/data_source/mock_data/selfcare_fixtures.dart).

```bash
flutter pub get
dart run build_runner build
flutter gen-l10n

flutter run --flavor development --target lib/main_development.dart   # mocked
flutter run --flavor staging     --target lib/main_staging.dart       # live API
flutter run --flavor production  --target lib/main_production.dart    # live API
```

Sign in with any password — the mock auth source accepts whatever you type, and
the customer ID field is pre-filled.

### Pointing it at a real backend

The customer self-care API **does not exist yet**. Staging and production
resolve to a deliberately unroutable placeholder
([`ApiBaseUrl`](lib/core/env/api_base_url.dart)) so a forgotten configuration
fails loudly instead of quietly reaching some unintended host.

Supply the origin at build time — no code change needed:

```bash
flutter run --flavor staging --target lib/main_staging.dart \
  --dart-define=API_BASE_URL=https://selfcare-api.example.com
```

The contract the app expects is written out in the `remote/` data sources under
[`lib/data/data_source/`](lib/data/data_source/) — every path, verb and payload
it will call, under `/api/v1/selfcare/…`.

---

## Architecture

Clean Architecture with a strict inward dependency rule.

```
domain/       entities (freezed), repository interfaces, one use case per operation
data/         DTOs + remappers, data sources (mock | remote), repository impls
presentation/ screens, cubits, the Industry design system as widgets
core/         DI, flavours, error handling, extensions
```

### Flavour-selected data sources

Repositories never know whether data is mocked. They take a
`DataSourceFactory` and ask it for what they need; DI binds
`MockDataSourceFactory` for `development` and `RemoteDataSourceFactory` for the
other two ([`data_source_provider.dart`](lib/data/data_source/base/factory/data_source_provider.dart)).

Adding a data source means: interface + `mock/` + `remote/` implementations,
then wiring both into `DataSourceFactory`, both factories, and the provider.

### The shell

Everything after sign-in lives inside one persistent `DashboardScreen`: the
masthead, the offline strip, a nested router, the bottom tabs and the drawer.
That is what keeps the chrome still while the body changes, and what lets the
**selected connection** — the line every screen is scoped to — outlive
navigation.

A screen and its tab are deliberately not the same thing: paying a bill, setting
up autopay and viewing a receipt all keep *Bill* lit. See
[`shell_destinations.dart`](lib/presentation/screen/dashboard/shell_destinations.dart).

### The design system

`_ds/industry-…/styles.css` is transcribed into Flutter in two places:

- [`AppPalette`](lib/presentation/theme/base/app_palette.dart) — the tonal
  ramps, verbatim. The design leans on specific steps by number
  (`accent-900` for dark chrome, `accent-100` for selected rows), so they stay
  ramps rather than being flattened into semantic roles.
- [`widgets/industry/`](lib/presentation/widgets/industry/) — one widget per CSS
  class, named after it: `BlueprintBox` (`.blueprint`, including the crosshair
  registration marks), `DsButton`, `DsTag`, `DsSwitch`, `DsSegmented`,
  `DsOptionRow`, `DsKeyValueTable`.

Square corners everywhere, hairline dividers, Barlow / Barlow Condensed.

### Localisation

English and Bengali, ~500 strings, extracted from the design's own bilingual
table so nothing was transcribed by hand. Source:
[`lib/l10n/arb/`](lib/l10n/arb/), accessed as `context.l10n.<key>`.

Content that comes from the operator's database — connection nicknames, ticket
subjects, plan names — is **not** routed through the ARB files. It is data, not
UI copy.

---

## Testing

```bash
flutter test
flutter analyze
```

`test/` mirrors `lib/`. Each layer is tested against a mock of the layer
directly beneath it (`mocktail`); no real network, storage or DI is touched.

---

## Screens

| | |
|---|---|
| Auth | Sign in (customer ID + password), one-time code |
| Home | Connection switcher, portfolio totals, amount due, all lines, 12-tile menu |
| Billing | Bill, pay, receipt, autopay |
| Plans | Catalogue, current plan spec, pro-rata change, confirmation |
| Network | Wi-Fi & router, connected devices, speed test, bandwidth usage |
| Support | Line check, contacts, tickets, new ticket, thread |
| Account | Profile, settings, notifications, rewards, referrals, relocation, offers |

---

## Conventions

- **Branches:** `feat/`, `fix/`, `refactor/`, `chore/`
- **Commits:** Conventional Commits — `type: description`
- Run `./setup.sh` once to install the hooks that enforce both.
- Re-run `dart run build_runner build` after touching anything annotated with
  freezed / injectable / retrofit / json_serializable, and `flutter gen-l10n`
  after editing an ARB file.
