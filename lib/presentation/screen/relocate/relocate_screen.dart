import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/screen/relocate/cubit/relocate_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

/// Ask for a line to be moved to a new address.
@RoutePage()
class RelocateScreen extends StatelessWidget {
  const RelocateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connection = context.watch<ConnectionsCubit>().state.selected;
    if (connection == null) return const DsLoading(height: 320);

    return BlocProvider<RelocateCubit>(
      create: (_) => injector<RelocateCubit>()..load(),
      child: _RelocateView(connection: connection),
    );
  }
}

class _RelocateView extends StatefulWidget {
  const _RelocateView({required this.connection});

  final ConnectionEntity connection;

  @override
  State<_RelocateView> createState() => _RelocateViewState();
}

class _RelocateViewState extends State<_RelocateView> {
  final _addressController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  void dispose() {
    _addressController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlocBuilder<RelocateCubit, RelocateState>(
      builder: (context, state) {
        if (state.status.isLoading || state.status.initial) {
          return const DsLoading(height: 320);
        }

        if (state.isSubmitted) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: BlueprintBox(
              borderColor: palette.accentRamp[300],
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DsIcon(AppIcons.check, size: 42, color: palette.accent),
                  const SizedBox(height: 10),
                  Text(
                    l10n.relocateDoneTitle,
                    textAlign: TextAlign.center,
                    style: AppFonts.heading(size: 24, color: palette.text),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    l10n.relocateDoneBody,
                    textAlign: TextAlign.center,
                    style: AppFonts.body(
                      size: 13,
                      color: palette.neutralRamp[700],
                    ),
                  ),
                  const SizedBox(height: 16),
                  DsButton(
                    label: l10n.done,
                    variant: DsButtonVariant.primary,
                    blueprint: true,
                    minHeight: 48,
                    onPressed: () => context.navigateTo(const HomeRoute()),
                  ),
                ],
              ),
            ),
          );
        }

        final cubit = context.read<RelocateCubit>();

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            DsField(
              label: l10n.movingLine,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(
                      '${widget.connection.displayName} · '
                      '${widget.connection.code}',
                      style: AppFonts.heading(size: 17, color: palette.text),
                    ),
                  ),
                  Text(
                    widget.connection.addressLine ?? '',
                    style: AppFonts.body(
                      size: 12.5,
                      color: palette.neutralRamp[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            DsField(
              label: l10n.newArea,
              child: Column(
                children: [
                  for (var i = 0; i < state.areas.length; i++) ...[
                    if (i > 0) const SizedBox(height: 8),
                    DsOptionRow(
                      label: state.areas[i].name,
                      selected: state.selectedAreaId == state.areas[i].id,
                      onTap: () => cubit.selectArea(state.areas[i]),
                      trailing: Text(
                        state.areas[i].isCovered
                            ? l10n.covered
                            : l10n.surveyNeeded,
                        style: AppFonts.body(
                          size: 11.5,
                          color: state.areas[i].isCovered
                              ? palette.accentRamp[700]
                              : palette.neutralRamp[600],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 16),
            DsField(
              label: l10n.newAddress,
              child: DsInput.multiline(
                controller: _addressController,
                hintText: l10n.addressPlaceholder,
                onChanged: cubit.setAddress,
              ),
            ),
            const SizedBox(height: 16),
            DsField(
              label: l10n.moveDate,
              child: DsInput(
                controller: _dateController,
                hintText: l10n.moveDateVal,
                onChanged: cubit.setPreferredDate,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              decoration: BoxDecoration(
                color: palette.accentRamp[100],
                border: Border(
                  left: BorderSide(color: palette.accent, width: 3),
                ),
              ),
              child: Text(
                l10n.relocateFee,
                style: AppFonts.body(
                  size: 12.5,
                  color: palette.accentRamp[900],
                ),
              ),
            ),
            const SizedBox(height: 16),
            DsButton(
              label: l10n.requestMove,
              variant: DsButtonVariant.primary,
              blueprint: true,
              block: true,
              minHeight: 52,
              fontSize: 15,
              onPressed: state.canSubmit
                  ? () => cubit.submit(connectionId: widget.connection.id)
                  : null,
            ),
          ],
        );
      },
    );
  }
}
