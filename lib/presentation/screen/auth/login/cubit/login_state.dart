part of 'login_cubit.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default(BaseStatus.initial()) BaseStatus loginStatus,
    @Default(AuthMode.password) AuthMode mode,
    @Default('') String customerId,
    @Default('') String password,
    @Default('') String otp,

    /// Drives the inline "Enter your password to continue." banner. Distinct
    /// from [loginStatus] failure: nothing was sent, so there is no
    /// `ResponseError` to render.
    @Default(false) bool showEmptyPasswordError,
    LoginEntity? loginEntity,
  }) = _LoginState;

  const LoginState._();

  bool get isSubmitting => loginStatus.isLoading;

  /// The verify button stays disabled until all six digits are in.
  bool get canSubmitOtp => otp.length >= LoginCubit.otpLength;
}
