import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/injector/injector.dart';
import 'package:isp_selfcare/domain/use_cases/auth/logout_use_case.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/screen/dashboard/cubit/connections_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// Who the operator thinks the customer is, and the two things they are
/// allowed to change about it.
@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final state = context.watch<ConnectionsCubit>().state;
    final customer = state.customer;
    final connection = state.selected;

    if (customer == null) return const DsLoading(height: 320);

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _AccountHeader(
          name: customer.fullName,
          initials: customer.initials,
          subtitle:
              'ID ${connection?.code ?? customer.code} · '
              '${state.connections.length}${l10n.connections}',
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DsKeyValueTable(
                rows: [
                  DsKeyValueRow(
                    label: l10n.email,
                    value: customer.email ?? '—',
                  ),
                  DsKeyValueRow(label: l10n.phone, value: customer.phone),
                  DsKeyValueRow(
                    label: l10n.address,
                    value: connection?.addressLine ?? '—',
                  ),
                  DsKeyValueRow(
                    label: l10n.titleHome,
                    value:
                        '${state.connections.length}'
                        '${l10n.activeLines}',
                  ),
                  DsKeyValueRow(
                    label: l10n.routerMac,
                    value: connection?.macAddress ?? '—',
                  ),
                  if (customer.createdAt != null)
                    DsKeyValueRow(
                      label: l10n.installed,
                      value: formatDayMonthYear(customer.createdAt!),
                    ),
                ],
              ),
              const SizedBox(height: 18),
              DsButton(
                label: l10n.editContact,
                variant: DsButtonVariant.secondary,
                block: true,
                minHeight: 48,
                onPressed: () => showDsToast(context, l10n.editContact),
              ),
              const SizedBox(height: 8),
              DsButton(
                label: l10n.changePassword,
                variant: DsButtonVariant.secondary,
                block: true,
                minHeight: 48,
                onPressed: () => showDsToast(context, l10n.changePassword),
              ),
              const SizedBox(height: 8),
              DsButton(
                label: l10n.signOut,
                variant: DsButtonVariant.ghost,
                block: true,
                minHeight: 48,
                foreground: palette.accentRamp[800],
                onPressed: () => signOut(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Ends the session and returns to the sign-in screen.
///
/// Shared with the settings screen, which offers the same action — both must
/// clear the stack, or the back gesture walks straight back into the
/// signed-in shell.
Future<void> signOut(BuildContext context) async {
  await injector<LogoutUseCase>().execute();
  if (!context.mounted) return;
  await context.router.replaceAll([const LogInRoute()]);
}

class _AccountHeader extends StatelessWidget {
  const _AccountHeader({
    required this.name,
    required this.initials,
    required this.subtitle,
  });

  final String name;
  final String initials;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final ink = palette.onAccentSurface;

    return Container(
      color: palette.accentRamp[900],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          // The design reserves a square 1:1 photo slot; with no avatar in the
          // data model it shows the customer's initials at the same size.
          BlueprintBox(
            width: 74,
            height: 74,
            alignment: Alignment.center,
            background: palette.accentRamp[700],
            borderColor: palette.accentRamp[300],
            child: Text(
              initials,
              style: AppFonts.heading(size: 28, color: ink),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  style: AppFonts.heading(size: 26, color: ink, height: 1.1),
                ),
                Text(
                  subtitle,
                  style: AppFonts.body(
                    size: 12.5,
                    color: palette.accentRamp[300],
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
