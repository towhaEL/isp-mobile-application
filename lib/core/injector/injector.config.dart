// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/data_source/account/mock/account_mock_data_source.dart'
    as _i897;
import '../../data/data_source/account/remote/account_remote_data_source.dart'
    as _i690;
import '../../data/data_source/auth/mock/auth_mock_data_source.dart' as _i63;
import '../../data/data_source/auth/remote/auth_remote_data_source.dart'
    as _i976;
import '../../data/data_source/base/factory/data_source_factory.dart' as _i718;
import '../../data/data_source/base/factory/data_source_provider.dart' as _i899;
import '../../data/data_source/billing/mock/billing_mock_data_source.dart'
    as _i557;
import '../../data/data_source/billing/remote/billing_remote_data_source.dart'
    as _i991;
import '../../data/data_source/network/mock/network_mock_data_source.dart'
    as _i775;
import '../../data/data_source/network/remote/network_remote_data_source.dart'
    as _i1033;
import '../../data/data_source/package/mock/package_mock_data_source.dart'
    as _i423;
import '../../data/data_source/package/remote/package_remote_data_source.dart'
    as _i809;
import '../../data/data_source/support/mock/support_mock_data_source.dart'
    as _i493;
import '../../data/data_source/support/remote/support_remote_data_source.dart'
    as _i639;
import '../../data/data_source/user/local/subscription_local_data_source.dart'
    as _i280;
import '../../data/data_source/user/local/user_local_data_source.dart' as _i627;
import '../../data/data_source/user/mock/user_mock_data_source.dart' as _i759;
import '../../data/data_source/user/remote/user_remote_data_source.dart'
    as _i118;
import '../../data/repository_impl/account/account_repository_impl.dart'
    as _i839;
import '../../data/repository_impl/auth/auth_repository_impl.dart' as _i747;
import '../../data/repository_impl/billing/billing_repository_impl.dart'
    as _i364;
import '../../data/repository_impl/network/network_repository_impl.dart'
    as _i109;
import '../../data/repository_impl/package/package_repository_impl.dart'
    as _i562;
import '../../data/repository_impl/support/support_repository_impl.dart'
    as _i758;
import '../../data/repository_impl/user/subscription_repository_impl.dart'
    as _i728;
import '../../data/repository_impl/user/user_cache_repository_impl.dart'
    as _i270;
import '../../data/repository_impl/user/user_repository_impl.dart' as _i339;
import '../../data/repository_impl/user/user_subscription_proxy_repository_impl.dart'
    as _i117;
import '../../domain/repository/account/account_repository.dart' as _i406;
import '../../domain/repository/auth/auth_repository.dart' as _i912;
import '../../domain/repository/billing/billing_repository.dart' as _i594;
import '../../domain/repository/network/network_repository.dart' as _i43;
import '../../domain/repository/package/package_repository.dart' as _i576;
import '../../domain/repository/support/support_repository.dart' as _i52;
import '../../domain/repository/user/subscription_repository.dart' as _i465;
import '../../domain/repository/user/user_repository.dart' as _i183;
import '../../domain/use_cases/account/get_connections_use_case.dart' as _i559;
import '../../domain/use_cases/account/get_notification_preferences_use_case.dart'
    as _i140;
import '../../domain/use_cases/account/get_notifications_use_case.dart'
    as _i787;
import '../../domain/use_cases/account/get_offers_use_case.dart' as _i91;
import '../../domain/use_cases/account/get_profile_use_case.dart' as _i971;
import '../../domain/use_cases/account/get_referral_use_case.dart' as _i1019;
import '../../domain/use_cases/account/get_rewards_use_case.dart' as _i440;
import '../../domain/use_cases/account/get_service_areas_use_case.dart'
    as _i442;
import '../../domain/use_cases/account/redeem_reward_use_case.dart' as _i451;
import '../../domain/use_cases/account/request_relocation_use_case.dart'
    as _i453;
import '../../domain/use_cases/account/set_notification_preference_use_case.dart'
    as _i350;
import '../../domain/use_cases/auth/has_session_use_case.dart' as _i758;
import '../../domain/use_cases/auth/login_use_case.dart' as _i40;
import '../../domain/use_cases/auth/logout_use_case.dart' as _i76;
import '../../domain/use_cases/billing/get_account_summary_use_case.dart'
    as _i367;
import '../../domain/use_cases/billing/get_autopay_use_case.dart' as _i267;
import '../../domain/use_cases/billing/get_invoice_use_case.dart' as _i304;
import '../../domain/use_cases/billing/get_invoices_use_case.dart' as _i52;
import '../../domain/use_cases/billing/get_payment_methods_use_case.dart'
    as _i520;
import '../../domain/use_cases/billing/get_payments_use_case.dart' as _i398;
import '../../domain/use_cases/billing/pay_invoice_use_case.dart' as _i886;
import '../../domain/use_cases/billing/save_autopay_use_case.dart' as _i952;
import '../../domain/use_cases/network/get_devices_use_case.dart' as _i39;
import '../../domain/use_cases/network/get_usage_use_case.dart' as _i534;
import '../../domain/use_cases/network/get_wifi_settings_use_case.dart'
    as _i224;
import '../../domain/use_cases/network/restart_router_use_case.dart' as _i196;
import '../../domain/use_cases/network/run_speed_test_use_case.dart' as _i456;
import '../../domain/use_cases/network/save_wifi_settings_use_case.dart'
    as _i803;
import '../../domain/use_cases/network/set_device_blocked_use_case.dart'
    as _i696;
import '../../domain/use_cases/package/change_package_use_case.dart' as _i1054;
import '../../domain/use_cases/package/get_packages_use_case.dart' as _i935;
import '../../domain/use_cases/package/get_proration_quote_use_case.dart'
    as _i975;
import '../../domain/use_cases/support/create_ticket_use_case.dart' as _i789;
import '../../domain/use_cases/support/get_line_check_use_case.dart' as _i971;
import '../../domain/use_cases/support/get_support_contacts_use_case.dart'
    as _i995;
import '../../domain/use_cases/support/get_ticket_messages_use_case.dart'
    as _i557;
import '../../domain/use_cases/support/get_tickets_use_case.dart' as _i975;
import '../../domain/use_cases/support/reply_to_ticket_use_case.dart' as _i850;
import '../../domain/use_cases/user/get_subscription_status_use_case.dart'
    as _i128;
import '../../domain/use_cases/user/get_user_list_use_case.dart' as _i596;
import '../../domain/use_cases/user/set_subscription_status_use_case.dart'
    as _i988;
import '../../presentation/screen/auth/login/cubit/login_cubit.dart' as _i549;
import '../../presentation/screen/autopay/cubit/autopay_cubit.dart' as _i741;
import '../../presentation/screen/bill/cubit/bill_cubit.dart' as _i996;
import '../../presentation/screen/dashboard/cubit/connections_cubit.dart'
    as _i178;
import '../../presentation/screen/notifications/cubit/notifications_cubit.dart'
    as _i367;
import '../../presentation/screen/offers/cubit/offers_cubit.dart' as _i536;
import '../../presentation/screen/packages/cubit/packages_cubit.dart' as _i542;
import '../../presentation/screen/pay/cubit/pay_cubit.dart' as _i565;
import '../../presentation/screen/plan_change/cubit/plan_change_cubit.dart'
    as _i837;
import '../../presentation/screen/referral/cubit/referral_cubit.dart' as _i812;
import '../../presentation/screen/relocate/cubit/relocate_cubit.dart' as _i458;
import '../../presentation/screen/rewards/cubit/rewards_cubit.dart' as _i268;
import '../../presentation/screen/speed_test/cubit/speed_test_cubit.dart'
    as _i653;
import '../../presentation/screen/support/cubit/support_cubit.dart' as _i17;
import '../../presentation/screen/ticket/cubit/new_ticket_cubit.dart' as _i54;
import '../../presentation/screen/ticket/cubit/ticket_thread_cubit.dart'
    as _i248;
import '../../presentation/screen/usage/cubit/usage_cubit.dart' as _i917;
import '../../presentation/screen/wifi/cubit/wifi_cubit.dart' as _i833;
import '../helper/secure_storage_service.dart' as _i693;
import 'module.dart' as _i946;

const String _staging = 'staging';
const String _development = 'development';
const String _production = 'production';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    final storageModule = _$StorageModule();
    final loggerModule = _$LoggerModule();
    final dataSourceProvider = _$DataSourceProvider();
    final userRepositoryModule = _$UserRepositoryModule();
    gh.factory<String>(() => networkModule.baseURL);
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => storageModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => storageModule.secureStorage,
    );
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.lazySingleton<_i897.AccountMockDataSource>(
      () => _i897.AccountMockDataSource(),
    );
    gh.lazySingleton<_i63.AuthMockDataSource>(() => _i63.AuthMockDataSource());
    gh.lazySingleton<_i557.BillingMockDataSource>(
      () => _i557.BillingMockDataSource(),
    );
    gh.lazySingleton<_i775.NetworkMockDataSource>(
      () => _i775.NetworkMockDataSource(),
    );
    gh.lazySingleton<_i423.PackageMockDataSource>(
      () => _i423.PackageMockDataSource(),
    );
    gh.lazySingleton<_i493.SupportMockDataSource>(
      () => _i493.SupportMockDataSource(),
    );
    gh.lazySingleton<_i759.UserMockDataSource>(
      () => _i759.UserMockDataSource(),
    );
    gh.lazySingleton<_i693.SecureStorageService>(
      () => _i693.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.unAuthenticatedStgDio,
      instanceName: 'unauthenticated',
      registerFor: {_staging},
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.authenticatedDio,
      instanceName: 'authenticated',
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.unAuthenticatedDevDio,
      instanceName: 'unauthenticated',
      registerFor: {_development},
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.unAuthenticatedProdDio,
      instanceName: 'unauthenticated',
      registerFor: {_production},
    );
    gh.lazySingleton<_i280.SubscriptionLocalDataSource>(
      () => _i280.SubscriptionLocalDataSource(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i976.AuthRemoteDataSource>(
      () => _i976.AuthRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'unauthenticated'),
      ),
    );
    gh.lazySingleton<_i118.UserRemoteDataSource>(
      () => _i118.UserRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'unauthenticated'),
      ),
    );
    gh.singleton<_i718.DataSourceFactory>(
      () => dataSourceProvider.mockFactory(
        gh<_i759.UserMockDataSource>(),
        gh<_i63.AuthMockDataSource>(),
        gh<_i897.AccountMockDataSource>(),
        gh<_i557.BillingMockDataSource>(),
        gh<_i423.PackageMockDataSource>(),
        gh<_i775.NetworkMockDataSource>(),
        gh<_i493.SupportMockDataSource>(),
      ),
      registerFor: {_development},
    );
    gh.lazySingleton<_i627.UserLocalDataSource>(
      () => _i627.UserLocalDataSourceImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i690.AccountRemoteDataSource>(
      () => _i690.AccountRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticated'),
      ),
    );
    gh.lazySingleton<_i991.BillingRemoteDataSource>(
      () => _i991.BillingRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticated'),
      ),
    );
    gh.lazySingleton<_i1033.NetworkRemoteDataSource>(
      () => _i1033.NetworkRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticated'),
      ),
    );
    gh.lazySingleton<_i809.PackageRemoteDataSource>(
      () => _i809.PackageRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticated'),
      ),
    );
    gh.lazySingleton<_i639.SupportRemoteDataSource>(
      () => _i639.SupportRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticated'),
      ),
    );
    gh.lazySingleton<_i465.SubscriptionRepository>(
      () => _i728.SubscriptionRepositoryImpl(
        gh<_i280.SubscriptionLocalDataSource>(),
      ),
    );
    gh.singleton<_i128.GetSubscriptionStatusUseCase>(
      () => _i128.GetSubscriptionStatusUseCase(
        gh<_i465.SubscriptionRepository>(),
      ),
    );
    gh.singleton<_i988.SetSubscriptionStatusUseCase>(
      () => _i988.SetSubscriptionStatusUseCase(
        gh<_i465.SubscriptionRepository>(),
      ),
    );
    gh.singleton<_i718.DataSourceFactory>(
      () => dataSourceProvider.remoteFactory(
        gh<_i118.UserRemoteDataSource>(),
        gh<_i976.AuthRemoteDataSource>(),
        gh<_i690.AccountRemoteDataSource>(),
        gh<_i991.BillingRemoteDataSource>(),
        gh<_i809.PackageRemoteDataSource>(),
        gh<_i1033.NetworkRemoteDataSource>(),
        gh<_i639.SupportRemoteDataSource>(),
      ),
      registerFor: {_production, _staging},
    );
    gh.singleton<_i594.BillingRepository>(
      () => _i364.BillingRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i406.AccountRepository>(
      () => _i839.AccountRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i559.GetConnectionsUseCase>(
      () => _i559.GetConnectionsUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i140.GetNotificationPreferencesUseCase>(
      () => _i140.GetNotificationPreferencesUseCase(
        gh<_i406.AccountRepository>(),
      ),
    );
    gh.singleton<_i787.GetNotificationsUseCase>(
      () => _i787.GetNotificationsUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i91.GetOffersUseCase>(
      () => _i91.GetOffersUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i971.GetProfileUseCase>(
      () => _i971.GetProfileUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i1019.GetReferralUseCase>(
      () => _i1019.GetReferralUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i440.GetRewardsUseCase>(
      () => _i440.GetRewardsUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i442.GetServiceAreasUseCase>(
      () => _i442.GetServiceAreasUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i451.RedeemRewardUseCase>(
      () => _i451.RedeemRewardUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i453.RequestRelocationUseCase>(
      () => _i453.RequestRelocationUseCase(gh<_i406.AccountRepository>()),
    );
    gh.singleton<_i350.SetNotificationPreferenceUseCase>(
      () =>
          _i350.SetNotificationPreferenceUseCase(gh<_i406.AccountRepository>()),
    );
    gh.factory<_i536.OffersCubit>(
      () => _i536.OffersCubit(gh<_i91.GetOffersUseCase>(), gh<_i974.Logger>()),
    );
    gh.singleton<_i367.NotificationsCubit>(
      () => _i367.NotificationsCubit(
        gh<_i787.GetNotificationsUseCase>(),
        gh<_i140.GetNotificationPreferencesUseCase>(),
        gh<_i350.SetNotificationPreferenceUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i183.UserRepository>(
      () => _i339.UserRepositoryImpl(gh<_i718.DataSourceFactory>()),
      instanceName: 'remote',
    );
    gh.factory<_i812.ReferralCubit>(
      () => _i812.ReferralCubit(
        gh<_i1019.GetReferralUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i52.SupportRepository>(
      () => _i758.SupportRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i43.NetworkRepository>(
      () => _i109.NetworkRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i576.PackageRepository>(
      () => _i562.PackageRepositoryImpl(gh<_i718.DataSourceFactory>()),
    );
    gh.singleton<_i268.RewardsCubit>(
      () => _i268.RewardsCubit(
        gh<_i440.GetRewardsUseCase>(),
        gh<_i451.RedeemRewardUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i39.GetDevicesUseCase>(
      () => _i39.GetDevicesUseCase(gh<_i43.NetworkRepository>()),
    );
    gh.singleton<_i534.GetUsageUseCase>(
      () => _i534.GetUsageUseCase(gh<_i43.NetworkRepository>()),
    );
    gh.singleton<_i224.GetWifiSettingsUseCase>(
      () => _i224.GetWifiSettingsUseCase(gh<_i43.NetworkRepository>()),
    );
    gh.singleton<_i196.RestartRouterUseCase>(
      () => _i196.RestartRouterUseCase(gh<_i43.NetworkRepository>()),
    );
    gh.singleton<_i456.RunSpeedTestUseCase>(
      () => _i456.RunSpeedTestUseCase(gh<_i43.NetworkRepository>()),
    );
    gh.singleton<_i803.SaveWifiSettingsUseCase>(
      () => _i803.SaveWifiSettingsUseCase(gh<_i43.NetworkRepository>()),
    );
    gh.singleton<_i696.SetDeviceBlockedUseCase>(
      () => _i696.SetDeviceBlockedUseCase(gh<_i43.NetworkRepository>()),
    );
    gh.factory<_i917.UsageCubit>(
      () => _i917.UsageCubit(gh<_i534.GetUsageUseCase>(), gh<_i974.Logger>()),
    );
    gh.factory<_i458.RelocateCubit>(
      () => _i458.RelocateCubit(
        gh<_i442.GetServiceAreasUseCase>(),
        gh<_i453.RequestRelocationUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i1054.ChangePackageUseCase>(
      () => _i1054.ChangePackageUseCase(gh<_i576.PackageRepository>()),
    );
    gh.singleton<_i935.GetPackagesUseCase>(
      () => _i935.GetPackagesUseCase(gh<_i576.PackageRepository>()),
    );
    gh.singleton<_i975.GetProrationQuoteUseCase>(
      () => _i975.GetProrationQuoteUseCase(gh<_i576.PackageRepository>()),
    );
    gh.singleton<_i912.AuthRepository>(
      () => _i747.AuthRepositoryImpl(
        gh<_i718.DataSourceFactory>(),
        gh<_i693.SecureStorageService>(),
      ),
    );
    gh.factory<_i833.WifiCubit>(
      () => _i833.WifiCubit(
        gh<_i224.GetWifiSettingsUseCase>(),
        gh<_i803.SaveWifiSettingsUseCase>(),
        gh<_i39.GetDevicesUseCase>(),
        gh<_i696.SetDeviceBlockedUseCase>(),
        gh<_i196.RestartRouterUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i789.CreateTicketUseCase>(
      () => _i789.CreateTicketUseCase(gh<_i52.SupportRepository>()),
    );
    gh.singleton<_i971.GetLineCheckUseCase>(
      () => _i971.GetLineCheckUseCase(gh<_i52.SupportRepository>()),
    );
    gh.singleton<_i995.GetSupportContactsUseCase>(
      () => _i995.GetSupportContactsUseCase(gh<_i52.SupportRepository>()),
    );
    gh.singleton<_i557.GetTicketMessagesUseCase>(
      () => _i557.GetTicketMessagesUseCase(gh<_i52.SupportRepository>()),
    );
    gh.singleton<_i975.GetTicketsUseCase>(
      () => _i975.GetTicketsUseCase(gh<_i52.SupportRepository>()),
    );
    gh.singleton<_i850.ReplyToTicketUseCase>(
      () => _i850.ReplyToTicketUseCase(gh<_i52.SupportRepository>()),
    );
    gh.factory<_i54.NewTicketCubit>(
      () => _i54.NewTicketCubit(
        gh<_i789.CreateTicketUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i367.GetAccountSummaryUseCase>(
      () => _i367.GetAccountSummaryUseCase(gh<_i594.BillingRepository>()),
    );
    gh.singleton<_i267.GetAutopayUseCase>(
      () => _i267.GetAutopayUseCase(gh<_i594.BillingRepository>()),
    );
    gh.singleton<_i304.GetInvoiceUseCase>(
      () => _i304.GetInvoiceUseCase(gh<_i594.BillingRepository>()),
    );
    gh.singleton<_i52.GetInvoicesUseCase>(
      () => _i52.GetInvoicesUseCase(gh<_i594.BillingRepository>()),
    );
    gh.singleton<_i520.GetPaymentMethodsUseCase>(
      () => _i520.GetPaymentMethodsUseCase(gh<_i594.BillingRepository>()),
    );
    gh.singleton<_i398.GetPaymentsUseCase>(
      () => _i398.GetPaymentsUseCase(gh<_i594.BillingRepository>()),
    );
    gh.singleton<_i886.PayInvoiceUseCase>(
      () => _i886.PayInvoiceUseCase(gh<_i594.BillingRepository>()),
    );
    gh.singleton<_i952.SaveAutopayUseCase>(
      () => _i952.SaveAutopayUseCase(gh<_i594.BillingRepository>()),
    );
    gh.lazySingleton<_i183.UserRepository>(
      () => _i270.UserCacheRepositoryImpl(
        gh<_i183.UserRepository>(instanceName: 'remote'),
        gh<_i627.UserLocalDataSource>(),
      ),
      instanceName: 'cached',
    );
    gh.factory<_i837.PlanChangeCubit>(
      () => _i837.PlanChangeCubit(
        gh<_i935.GetPackagesUseCase>(),
        gh<_i975.GetProrationQuoteUseCase>(),
        gh<_i1054.ChangePackageUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i758.HasSessionUseCase>(
      () => _i758.HasSessionUseCase(gh<_i912.AuthRepository>()),
    );
    gh.singleton<_i40.LoginUseCase>(
      () => _i40.LoginUseCase(gh<_i912.AuthRepository>()),
    );
    gh.singleton<_i76.LogoutUseCase>(
      () => _i76.LogoutUseCase(gh<_i912.AuthRepository>()),
    );
    gh.factory<_i653.SpeedTestCubit>(
      () => _i653.SpeedTestCubit(
        gh<_i456.RunSpeedTestUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i741.AutopayCubit>(
      () => _i741.AutopayCubit(
        gh<_i267.GetAutopayUseCase>(),
        gh<_i520.GetPaymentMethodsUseCase>(),
        gh<_i952.SaveAutopayUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.lazySingleton<_i183.UserRepository>(
      () => userRepositoryModule.cachedUserRepository(
        gh<_i183.UserRepository>(instanceName: 'cached'),
      ),
      registerFor: {_development},
    );
    gh.factory<_i542.PackagesCubit>(
      () => _i542.PackagesCubit(
        gh<_i935.GetPackagesUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i549.LoginCubit>(
      () => _i549.LoginCubit(gh<_i40.LoginUseCase>(), gh<_i974.Logger>()),
    );
    gh.factory<_i996.BillCubit>(
      () => _i996.BillCubit(
        gh<_i398.GetPaymentsUseCase>(),
        gh<_i267.GetAutopayUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i248.TicketThreadCubit>(
      () => _i248.TicketThreadCubit(
        gh<_i557.GetTicketMessagesUseCase>(),
        gh<_i850.ReplyToTicketUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.singleton<_i178.ConnectionsCubit>(
      () => _i178.ConnectionsCubit(
        gh<_i971.GetProfileUseCase>(),
        gh<_i559.GetConnectionsUseCase>(),
        gh<_i52.GetInvoicesUseCase>(),
        gh<_i367.GetAccountSummaryUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i17.SupportCubit>(
      () => _i17.SupportCubit(
        gh<_i971.GetLineCheckUseCase>(),
        gh<_i995.GetSupportContactsUseCase>(),
        gh<_i975.GetTicketsUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.factory<_i565.PayCubit>(
      () => _i565.PayCubit(
        gh<_i520.GetPaymentMethodsUseCase>(),
        gh<_i886.PayInvoiceUseCase>(),
        gh<_i974.Logger>(),
      ),
    );
    gh.lazySingleton<_i183.UserRepository>(
      () => _i117.UserSubscriptionProxyRepositoryImpl(
        gh<_i183.UserRepository>(instanceName: 'cached'),
        gh<_i465.SubscriptionRepository>(),
      ),
      registerFor: {_production, _staging},
    );
    gh.singleton<_i596.GetUserListUseCase>(
      () => _i596.GetUserListUseCase(gh<_i183.UserRepository>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i946.NetworkModule {}

class _$StorageModule extends _i946.StorageModule {}

class _$LoggerModule extends _i946.LoggerModule {}

class _$DataSourceProvider extends _i899.DataSourceProvider {}

class _$UserRepositoryModule extends _i946.UserRepositoryModule {}
