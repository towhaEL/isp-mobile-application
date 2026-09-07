import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// The twelve-tile grid that is the app's real table of contents.
///
/// Four across, three down, hairline-ruled like a form. Every destination the
/// bottom bar cannot hold is reachable from here, which is why the grid is
/// exhaustive rather than a curated shortcut list.
class ManageTiles extends StatelessWidget {
  const ManageTiles({super.key});

  static const _columns = 4;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final tiles = _tiles(context.l10n);
    final rowCount = (tiles.length / _columns).ceil();

    return DecoratedBox(
      decoration: BoxDecoration(
        // The grid's own top and left rules; each tile draws its right and
        // bottom, so the whole block closes without doubling any line.
        border: Border(
          top: BorderSide(color: palette.accentRamp[200]),
          left: BorderSide(color: palette.accentRamp[200]),
        ),
      ),
      child: Column(
        children: [
          for (var row = 0; row < rowCount; row++)
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var col = 0; col < _columns; col++)
                    Expanded(
                      child: row * _columns + col < tiles.length
                          ? _Tile(tile: tiles[row * _columns + col])
                          : const SizedBox.shrink(),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  List<_TileSpec> _tiles(AppLocalizations l10n) => [
    _TileSpec(l10n.titleBill, AppIcons.bill, const BillRoute()),
    _TileSpec(l10n.titlePackages, AppIcons.pkg, const PackagesRoute()),
    _TileSpec(l10n.titleSpeedtest, AppIcons.speed, const SpeedTestRoute()),
    _TileSpec(l10n.wiFi, AppIcons.wifi, const WifiRoute()),
    _TileSpec(l10n.usage, AppIcons.usage, const UsageRoute()),
    _TileSpec(l10n.autopay, AppIcons.autopay, const AutopayRoute()),
    _TileSpec(l10n.titleRewards, AppIcons.rewards, const RewardsRoute()),
    _TileSpec(l10n.refer, AppIcons.referral, const ReferralRoute()),
    _TileSpec(l10n.titleSupport, AppIcons.support, const SupportRoute()),
    _TileSpec(l10n.titleOffers, AppIcons.offers, const OffersRoute()),
    _TileSpec(l10n.shiftLine, AppIcons.move, const RelocateRoute()),
    _TileSpec(l10n.titleSettings, AppIcons.settings, const SettingsRoute()),
  ];
}

@immutable
class _TileSpec {
  const _TileSpec(this.label, this.iconPath, this.route);

  final String label;
  final String iconPath;
  final PageRouteInfo<dynamic> route;
}

class _Tile extends StatelessWidget {
  const _Tile({required this.tile});

  final _TileSpec tile;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Material(
      color: palette.accentRamp[100],
      child: InkWell(
        onTap: () => context.navigateTo(tile.route),
        child: Container(
          constraints: const BoxConstraints(minHeight: 84),
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: palette.accentRamp[200]),
              bottom: BorderSide(color: palette.accentRamp[200]),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DsIcon(tile.iconPath, size: 20, color: palette.accentRamp[700]),
              const SizedBox(height: 10),
              Text(
                tile.label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppFonts.heading(
                  size: 12,
                  color: palette.accentRamp[900],
                  height: 1.15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
