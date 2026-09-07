import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/screen/notifications/cubit/notifications_cubit.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';
import 'package:isp_selfcare/presentation/widgets/util/date_format.dart';

/// Bills, outages, payments and ticket replies, newest first.
///
/// Opening the screen is what marks them read — the masthead's pip exists to
/// say "there is something here", and it has done its job once the customer
/// arrives.
@RoutePage()
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
    // After the first frame, so the list still paints its unread tint once
    // before settling — the customer sees which ones were new.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<NotificationsCubit>().markAllRead();
    });
  }

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;

    return BlocBuilder<NotificationsCubit, NotificationsState>(
      builder: (context, state) {
        if (state.status.isLoading || state.status.initial) {
          return const DsLoading(height: 320);
        }
        if (state.isEmpty) {
          return DsEmptyState(
            iconPath: AppIcons.bell,
            title: l10n.noNotifTitle,
            body: l10n.noNotifBody,
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.only(bottom: 8),
          itemCount: state.notifications.length,
          itemBuilder: (context, i) {
            final item = state.notifications[i];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: item.isRead
                    ? Colors.transparent
                    : palette.accentRamp[100],
                border: Border(bottom: BorderSide(color: palette.divider)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.only(top: 6),
                    color: item.isRead
                        ? palette.neutralRamp[400]
                        : palette.accent,
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: _NotificationBody(item: item)),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _NotificationBody extends StatelessWidget {
  const _NotificationBody({required this.item});

  final NotificationEntity item;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.title,
          style: AppFonts.heading(size: 15, color: palette.text),
        ),
        Text(
          item.body,
          style: AppFonts.body(
            size: 13,
            color: palette.neutralRamp[700],
            height: 1.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          formatNotificationTime(item.sentAt).toUpperCase(),
          style: AppFonts.body(
            size: 11,
            color: palette.neutralRamp[500],
            letterSpacing: 11 * 0.08,
          ),
        ),
      ],
    );
  }
}
