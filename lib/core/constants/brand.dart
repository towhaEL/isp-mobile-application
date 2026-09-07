/// Operator-facing branding.
///
/// The prototype exposes these as editable props (`brandName`, hotline, …)
/// because one design serves several ISPs. They are build-time constants here;
/// point them at remote config if the app is ever white-labelled per tenant.
abstract class Brand {
  const Brand._();

  static const String name = 'Fibreline';

  /// Shown on the support screen and in the plan spec.
  static const String hotline = '16335';
  static const String phone = '09678 123 123';
  static const String supportEmail = 'support@example.net';

  /// ISO 4217 code and the symbol the design prints before amounts.
  static const String currencyCode = 'BDT';
}
