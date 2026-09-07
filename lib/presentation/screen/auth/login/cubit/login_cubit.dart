import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/error/response_error.dart';
import 'package:isp_selfcare/core/state_status/base_status.dart';
import 'package:isp_selfcare/domain/entity/base/base_entity.dart';
import 'package:isp_selfcare/domain/use_cases/auth/login_use_case.dart';
import 'package:logger/logger.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

/// Which of the two sign-in routes the customer is on.
///
/// The design offers ID + password as the primary path and a one-time code as
/// the alternative, with "Use ID instead" leading back — so this is a mode on
/// one screen, not two screens.
enum AuthMode { password, otp }

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase, this._logger) : super(const LoginState());

  final LoginUseCase _loginUseCase;
  final Logger _logger;

  /// Length of the code the design's six boxes expect.
  static const int otpLength = 6;

  void switchMode(AuthMode mode) =>
      emit(state.copyWith(mode: mode, showEmptyPasswordError: false, otp: ''));

  void setCustomerId(String value) =>
      emit(state.copyWith(customerId: value.trim()));

  void setPassword(String value) => emit(
    // Typing is the customer answering the complaint, so clear it as they go.
    state.copyWith(password: value, showEmptyPasswordError: false),
  );

  void setOtp(String value) {
    final digits = value.replaceAll(RegExp('[^0-9]'), '');
    emit(
      state.copyWith(
        otp: digits.length > otpLength
            ? digits.substring(0, otpLength)
            : digits,
      ),
    );
  }

  Future<void> submit() async {
    if (state.mode == AuthMode.password && state.password.isEmpty) {
      // The design shows an inline banner rather than a failed round-trip.
      emit(state.copyWith(showEmptyPasswordError: true));
      return;
    }
    if (state.mode == AuthMode.otp && state.otp.length < otpLength) return;

    final entity = LoginEntity(
      username: state.customerId,
      // A verified one-time code is what authenticates the OTP path; the
      // backend distinguishes the two by which credential arrives.
      password: state.mode == AuthMode.otp ? state.otp : state.password,
    );

    emit(state.copyWith(loginStatus: const BaseStatus.loading()));
    try {
      await _loginUseCase.execute(entity);
      emit(
        state.copyWith(
          loginStatus: const BaseStatus.success(),
          loginEntity: entity,
        ),
      );
    } catch (e) {
      _logger.e(e);
      emit(
        state.copyWith(loginStatus: BaseStatus.failure(ResponseError.from(e))),
      );
    }
  }
}
