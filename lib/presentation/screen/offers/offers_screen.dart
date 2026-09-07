import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/offers/cubit/offers_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Campaign cards. Each is a framed plate with room for artwork the operator
/// supplies; until it does, the plate shows its own placeholder rather than
/// collapsing and changing the card's proportions.
@RoutePage()
class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<OffersCubit>(
    create: (_) => injector<OffersCubit>()..load(),
    child: const _OffersView(),
  );
}

class _OffersView extends StatelessWidget {
  const _OffersView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<OffersCubit, OffersState>(
      builder: (context, state) {
        if (state.status.isLoading || state.status.initial) {
          return const DsLoading(height: 320);
        }
        if (state.isEmpty) {
          return DsEmptyState(
            iconPath: AppIcons.offers,
            title: l10n.titleOffers,
            body: l10n.noNotifBody,
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: state.offers.length,
          separatorBuilder: (_, _) => const SizedBox(height: 14),
          itemBuilder: (context, i) => _OfferCard(offer: state.offers[i]),
        );
      },
    );
  }
}

class _OfferCard extends StatelessWidget {
  const _OfferCard({required this.offer});

  final OfferEntity offer;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return BlueprintBox(
      borderColor: palette.accentRamp[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 132,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: palette.accentRamp[700],
              border: Border(
                bottom: BorderSide(color: palette.accentRamp[300]),
              ),
            ),
            child: offer.imageUrl != null
                ? Image.network(offer.imageUrl!, fit: BoxFit.cover)
                : Text(
                    context.l10n.campaignImagePlaceholder.toUpperCase(),
                    style: AppFonts.kicker(
                      size: 11,
                      color: palette.onAccentSurface,
                      trackingEm: 0.12,
                    ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DsKicker(
                  offer.kicker,
                  color: palette.accentRamp[700],
                  trackingEm: 0.12,
                ),
                const SizedBox(height: 2),
                Text(
                  offer.title,
                  style: AppFonts.heading(
                    size: 20,
                    color: palette.text,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  offer.body,
                  style: AppFonts.body(
                    size: 13,
                    color: palette.neutralRamp[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
