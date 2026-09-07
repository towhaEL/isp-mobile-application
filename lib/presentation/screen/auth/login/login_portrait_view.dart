import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isp_selfcare/core/constants/brand.dart';
import 'package:isp_selfcare/core/error/error_localization.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/l10n/l10n.dart';
import 'package:isp_selfcare/presentation/route/app_router.gr.dart';
import 'package:isp_selfcare/presentation/theme/base/theme_extension.dart';
import 'package:isp_selfcare/presentation/widgets/industry/industry.dart';

import 'cubit/login_cubit.dart';

/// The signed-out shell: a dark brand masthead over a light form panel,
/// carrying either the ID + password form or the one-time-code form.
class LogInPortraitView extends StatefulWidget {
  const LogInPortraitView({super.key});

  @override
  State<LogInPortraitView> createState() => _LogInPortraitViewState();
}

class _LogInPortraitViewState extends State<LogInPortraitView> {
  final _customerIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _otpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // The prototype ships a customer ID already filled in. Keeping it means the
    // development flavour lands on a signed-in app in one tap, which is the
    // point of the mock data source.
    const seededId = '08.01.001.410233';
    _customerIdController.text = seededId;
    context.read<LoginCubit>().setCustomerId(seededId);
  }

  @override
  void dispose() {
    _customerIdController.dispose();
    _passwordController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;

    return Scaffold(
      backgroundColor: palette.accentRamp[900],
      body: BlocListener<LoginCubit, LoginState>(
        listenWhen: (a, b) => a.loginStatus != b.loginStatus,
        listener: (context, state) {
          if (state.loginStatus.isSuccess) {
            context.router.replaceAll([const DashboardRoute()]);
          }
          if (state.loginStatus.isFailure) {
            final error = (state.loginStatus as Failure).responseError;
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: palette.accentRamp[900],
                  shape: const RoundedRectangleBorder(),
                  content: Text(
                    context.errorLocalization.responseError(error),
                    style: AppFonts.body(
                      size: 13,
                      color: palette.onAccentSurface,
                    ),
                  ),
                ),
              );
          }
        },
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _BrandMasthead(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: palette.bg,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(22, 22, 22, 32),
                    child: BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) => state.mode == AuthMode.otp
                          ? _OtpForm(controller: _otpController)
                          : _PasswordForm(
                              customerIdController: _customerIdController,
                              passwordController: _passwordController,
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// `padding: 52px 22px 26px` over `--color-accent-900`.
class _BrandMasthead extends StatelessWidget {
  const _BrandMasthead();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final ink = palette.onAccentSurface;

    return Padding(
      // SafeArea already covers the status bar, so the design's 52px top
      // becomes a smaller inset here rather than stacking on top of it.
      padding: const EdgeInsets.fromLTRB(22, 28, 22, 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // The mark: a 34px outlined square holding a 12px filled one.
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: palette.accentRamp[300], width: 1.5),
            ),
            child: Container(
              width: 12,
              height: 12,
              color: palette.accentRamp[300],
            ),
          ),
          const SizedBox(height: 18),
          Text(
            Brand.name,
            style: AppFonts.heading(size: 34, color: ink, height: 1.05),
          ),
          const SizedBox(height: 4),
          Text(
            context.l10n.selfcare.toUpperCase(),
            style: AppFonts.kicker(
              size: 11,
              color: palette.accentRamp[300],
              trackingEm: 0.18,
            ),
          ),
        ],
      ),
    );
  }
}

class _PasswordForm extends StatelessWidget {
  const _PasswordForm({
    required this.customerIdController,
    required this.passwordController,
  });

  final TextEditingController customerIdController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<LoginCubit>();
    final state = context.watch<LoginCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.signIn,
          style: AppFonts.heading(size: 23, color: palette.text),
        ),
        const SizedBox(height: 16),
        DsField(
          label: l10n.customerId,
          child: DsInput(
            controller: customerIdController,
            onChanged: cubit.setCustomerId,
          ),
        ),
        const SizedBox(height: 14),
        DsField(
          label: l10n.password,
          child: DsInput(
            controller: passwordController,
            hintText: '••••••••',
            obscureText: true,
            onChanged: cubit.setPassword,
          ),
        ),
        const SizedBox(height: 6),
        if (state.showEmptyPasswordError) ...[
          _InlineNotice(message: l10n.loginErr),
          const SizedBox(height: 6),
        ],
        Align(
          alignment: Alignment.centerRight,
          child: _TextLink(label: l10n.forgot, onTap: () {}),
        ),
        const SizedBox(height: 16),
        DsButton(
          label: l10n.signIn,
          variant: DsButtonVariant.primary,
          blueprint: true,
          block: true,
          minHeight: 52,
          fontSize: 15,
          onPressed: state.isSubmitting ? null : cubit.submit,
        ),
        const _OrDivider(),
        DsButton(
          label: l10n.otpInstead,
          variant: DsButtonVariant.secondary,
          block: true,
          minHeight: 50,
          onPressed: () => cubit.switchMode(AuthMode.otp),
        ),
        const SizedBox(height: 18),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 4,
          children: [
            Text(
              l10n.newHere,
              style: AppFonts.body(size: 12, color: palette.neutralRamp[600]),
            ),
            _TextLink(label: l10n.applyLine, onTap: () {}, fontSize: 12),
          ],
        ),
      ],
    );
  }
}

class _OtpForm extends StatelessWidget {
  const _OtpForm({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final l10n = context.l10n;
    final cubit = context.read<LoginCubit>();
    final state = context.watch<LoginCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.enterCode,
          style: AppFonts.heading(size: 23, color: palette.text),
        ),
        const SizedBox(height: 6),
        Text(
          l10n.codeSent,
          style: AppFonts.body(size: 13, color: palette.neutralRamp[700]),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            for (var i = 0; i < LoginCubit.otpLength; i++) ...[
              if (i > 0) const SizedBox(width: 8),
              Expanded(
                child: _OtpBox(index: i, code: state.otp),
              ),
            ],
          ],
        ),
        const SizedBox(height: 8),
        DsInput(
          controller: controller,
          hintText: '000000',
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(LoginCubit.otpLength),
          ],
          textAlign: TextAlign.center,
          letterSpacing: 18 * 0.5,
          fontSize: 18,
          onChanged: cubit.setOtp,
        ),
        const SizedBox(height: 14),
        DsButton(
          label: l10n.verify,
          variant: DsButtonVariant.primary,
          blueprint: true,
          block: true,
          minHeight: 52,
          fontSize: 15,
          onPressed: state.canSubmitOtp && !state.isSubmitting
              ? cubit.submit
              : null,
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                l10n.resendIn,
                style: AppFonts.body(
                  size: 12.5,
                  color: palette.neutralRamp[600],
                ),
              ),
            ),
            DsButton(
              label: l10n.useId,
              variant: DsButtonVariant.ghost,
              minHeight: 44,
              onPressed: () => cubit.switchMode(AuthMode.password),
            ),
          ],
        ),
      ],
    );
  }
}

/// One of the six code cells. The cell awaiting input takes an accent border,
/// which is what tells the customer where they are in the code.
class _OtpBox extends StatelessWidget {
  const _OtpBox({required this.index, required this.code});

  final int index;
  final String code;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    final filled = index < code.length;
    final isNext = code.length == index;

    return Container(
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: filled ? palette.accentRamp[100] : Colors.transparent,
        border: Border.all(
          color: isNext ? palette.accent : palette.accentRamp[200],
        ),
      ),
      child: Text(
        filled ? code[index] : '',
        style: AppFonts.heading(size: 26, color: palette.accentRamp[900]),
      ),
    );
  }
}

/// The accent-bordered advisory strip the design uses instead of a red error.
class _InlineNotice extends StatelessWidget {
  const _InlineNotice({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
      decoration: BoxDecoration(
        color: palette.accentRamp[100],
        border: Border(left: BorderSide(color: palette.accent, width: 3)),
      ),
      child: Row(
        children: [
          DsIcon(AppIcons.warning, size: 16, color: palette.accentRamp[800]),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: AppFonts.body(size: 12.5, color: palette.accentRamp[900]),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrDivider extends StatelessWidget {
  const _OrDivider();

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        children: [
          Expanded(child: Container(height: 1, color: palette.divider)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              context.l10n.or.toUpperCase(),
              style: AppFonts.kicker(
                size: 10.5,
                color: palette.neutralRamp[600],
                trackingEm: 0.14,
              ),
            ),
          ),
          Expanded(child: Container(height: 1, color: palette.divider)),
        ],
      ),
    );
  }
}

class _TextLink extends StatelessWidget {
  const _TextLink({
    required this.label,
    required this.onTap,
    this.fontSize = 12.5,
  });

  final String label;
  final VoidCallback onTap;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette;
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: AppFonts.body(
          size: fontSize,
          // `a { color: var(--color-accent-700) }` in the screen's own styles.
          color: palette.accentRamp[700],
        ),
      ),
    );
  }
}
