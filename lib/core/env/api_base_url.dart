/// Single source of truth for each flavor's API origin.
///
/// The customer self-care API is not deployed yet, so every flavor falls back
/// to [_pending] — a deliberately unroutable placeholder. Two ways to point the
/// app at the real backend once it exists, in order of preference:
///
/// 1. Pass it at build time, no code change required:
///    `flutter run --flavor staging --target lib/main_staging.dart \
///       --dart-define=API_BASE_URL=https://api.example.com`
/// 2. Replace [_pending] below.
///
/// The `development` flavor never reads these: it resolves to the mock data
/// sources through `DataSourceProvider`, so it runs fully offline.
abstract class ApiBaseUrl {
  const ApiBaseUrl._();

  /// Placeholder origin. `.invalid` is reserved by RFC 2606 and can never
  /// resolve, so a forgotten placeholder fails loudly instead of silently
  /// reaching some unintended host.
  static const String _pending = 'https://selfcare-api.ideawaves.invalid';

  /// Each flavor resolves to the `API_BASE_URL` dart-define when one is passed,
  /// and to [_pending] otherwise.
  static const String development = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: _pending,
  );
  static const String staging = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: _pending,
  );
  static const String production = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: _pending,
  );

  /// Whether [url] is still the placeholder. Useful for surfacing a
  /// "backend not configured" state instead of an opaque DNS failure.
  static bool isPlaceholder(String url) => url == _pending;
}
