import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:isp_selfcare/core/constants/brand.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/shell_destinations.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// The dark masthead: menu, brand over the current screen's name, and the
/// notification bell with its unread pip.
class ShellTopBar extends StatelessWidget {
  const ShellTopBar({
    required this.title,
    required this.onMenu,
    required this.onNotifications,
    required this.hasUnread,
    super.key,
  });

  final String title;
  final VoidCallback onMenu;
  final VoidCallback onNotifications;
  final bool hasUnread;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final ink = palette.onAccentSurface;

    return Container(
      color: palette.accentRamp[900],
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          _ChromeIconButton(
            iconPath: AppIcons.menu,
            onPressed: onMenu,
            semanticLabel: MaterialLocalizations.of(
              context,
            ).openAppDrawerTooltip,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Brand.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppFonts.heading(
                    size: 17,
                    color: ink,
                    height: 1.1,
                    letterSpacing: 17 * 0.01,
                  ),
                ),
                Text(
                  title.toUpperCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppFonts.kicker(
                    size: 10.5,
                    color: palette.accentRamp[300],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          _ChromeIconButton(
            iconPath: AppIcons.bell,
            onPressed: onNotifications,
            semanticLabel: context.l10n.notifications,
            badge: hasUnread,
          ),
        ],
      ),
    );
  }
}

/// `.btn-icon` on the dark masthead: 36×36, hairline border at 30% of the ink.
class _ChromeIconButton extends StatelessWidget {
  const _ChromeIconButton({
    required this.iconPath,
    required this.onPressed,
    required this.semanticLabel,
    this.badge = false,
  });

  final String iconPath;
  final VoidCallback onPressed;
  final String semanticLabel;
  final bool badge;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final ink = palette.onAccentSurface;

    return Semantics(
      button: true,
      label: semanticLabel,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 36,
          height: 36,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: ink.withValues(alpha: 0.3)),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              DsIcon(iconPath, size: 20, color: ink),
              if (badge)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    color: palette.accentRamp[300],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The strip that appears under the masthead when the device has no network.
///
/// It says the app is showing saved data rather than pretending everything is
/// fine — the alternative is a customer reading a stale balance as current.
class OfflineBanner extends StatelessWidget {
  const OfflineBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Container(
      width: double.infinity,
      color: palette.neutralRamp[300],
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Row(
        children: [
          DsIcon(AppIcons.offline, size: 16, color: palette.neutralRamp[900]),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              context.l10n.offlineNote,
              style: AppFonts.body(
                size: 12,
                color: palette.neutralRamp[900],
                letterSpacing: 12 * 0.04,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// The five-tab bottom bar. The active tab is underscored from the top by a
/// 2px accent rule and tinted, which is the design's only selection cue.
class ShellBottomNav extends StatelessWidget {
  const ShellBottomNav({required this.activeTab, super.key});

  final ShellTab? activeTab;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: palette.bg,
        border: Border(top: BorderSide(color: palette.accentRamp[200])),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            for (final tab in ShellTab.values)
              Expanded(
                child: _NavButton(
                  tab: tab,
                  label: tab.label(l10n),
                  isActive: tab == activeTab,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    required this.tab,
    required this.label,
    required this.isActive,
  });

  final ShellTab tab;
  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final foreground = isActive
        ? palette.accentRamp[900]
        : palette.neutralRamp[600];

    return Semantics(
      button: true,
      selected: isActive,
      child: InkWell(
        onTap: () {
          if (isActive) return;
          // `navigate` rather than `push`: tapping a tab should move sideways
          // in the shell, not stack another copy of it on the back stack.
          context.navigateTo(_routeFor(tab));
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: 58),
          decoration: BoxDecoration(
            color: isActive ? palette.accentRamp[100] : Colors.transparent,
            border: Border(
              top: BorderSide(
                color: isActive ? palette.accent : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DsIcon(tab.iconPath, size: 20, color: foreground),
              const SizedBox(height: 4),
              Text(
                label.toUpperCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppFonts.heading(
                  size: 11,
                  color: foreground,
                  letterSpacing: 11 * 0.06,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// The five routes the shell's bar owns.
  static PageRouteInfo<dynamic> _routeFor(ShellTab tab) => switch (tab) {
    ShellTab.home => const HomeRoute(),
    ShellTab.bill => const BillRoute(),
    ShellTab.packages => const PackagesRoute(),
    ShellTab.wifi => const WifiRoute(),
    ShellTab.support => const SupportRoute(),
  };
}
