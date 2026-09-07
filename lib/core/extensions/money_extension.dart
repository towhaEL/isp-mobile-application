import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:isp_selfcare/l10n/l10n.dart';

/// Money formatting, matching the prototype's `fmt()`.
///
/// The design prints `Tk 1,050` in English and `৳ 1,050` in Bengali — the
/// symbol is localised but the *digits* are grouped `en-US` style in both, so
/// the number format is pinned to `en` rather than following the active locale.
/// Bengali numerals would be a legitimate choice, but it is not the one the
/// design made, and a bill that reads differently from the SMS the customer
/// also received is worse than a consistent one.
extension MoneyFormatting on num {
  /// e.g. `Tk 1,050`. Fractions are dropped — every price in the system is a
  /// whole taka, and a trailing `.00` on a bill card is noise.
  String toMoney(BuildContext context) =>
      '${context.l10n.currencySymbol} ${toAmount()}';

  /// The grouped digits alone, for places that print the symbol separately.
  String toAmount({int decimals = 0}) => NumberFormat(
    '#,##0${decimals > 0 ? '.${'0' * decimals}' : ''}',
    'en_US',
  ).format(this);
}
