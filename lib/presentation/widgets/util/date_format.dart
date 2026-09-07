import 'package:intl/intl.dart';

/// Date formats the design uses, in the shapes it uses them.
///
/// The prototype writes dates as `28 Sep` and `2 Sep 2026` — day first, month
/// abbreviated, no leading zero on the year form. `intl` is pinned to `en`
/// here for the same reason money is: the design shows Latin digits and
/// English month abbreviations in both languages, and a bill that disagrees
/// with the SMS about its own date helps nobody.

/// `28 Sep` — for a due date inside the current cycle, where the year is
/// understood.
String formatDayMonth(DateTime date) => DateFormat('dd MMM', 'en').format(date);

/// `2 Sep 2026` — for anything historical, where the year matters.
String formatDayMonthYear(DateTime date) =>
    DateFormat('d MMM yyyy', 'en').format(date);

/// `2 Sep, 21:40` — timestamps in a support thread.
String formatDayMonthTime(DateTime date) =>
    DateFormat('d MMM, HH:mm', 'en').format(date);

/// `10 Aug, 12:22 AM` — the notification list's timestamp.
String formatNotificationTime(DateTime date) =>
    DateFormat('d MMM, h:mm a', 'en').format(date);
