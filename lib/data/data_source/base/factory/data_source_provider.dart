import 'package:injectable/injectable.dart';
import 'package:isp_selfcare/core/env/app_environment.dart';
import 'package:isp_selfcare/data/data_source/account/mock/account_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/account/remote/account_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/auth/mock/auth_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/auth/remote/auth_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/base/factory/mock_data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/base/factory/remote_data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/billing/mock/billing_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/billing/remote/billing_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/network/mock/network_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/network/remote/network_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/package/mock/package_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/package/remote/package_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/support/mock/support_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/support/remote/support_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/user/mock/user_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/user/remote/user_remote_data_source.dart';

/// The one place the flavour decides mocked vs. live data.
///
/// Adding a data source means: interface + `mock/` + `remote/` implementations,
/// then wiring both into [DataSourceFactory] and both factories, and adding the
/// two parameters here.
@module
abstract class DataSourceProvider {
  @Environment(AppEnvironment.development)
  @Singleton(as: DataSourceFactory)
  MockDataSourceFactory mockFactory(
    UserMockDataSource userMock,
    AuthMockDataSource authMock,
    AccountMockDataSource accountMock,
    BillingMockDataSource billingMock,
    PackageMockDataSource packageMock,
    NetworkMockDataSource networkMock,
    SupportMockDataSource supportMock,
  ) => MockDataSourceFactory(
    userMock,
    authMock,
    accountMock,
    billingMock,
    packageMock,
    networkMock,
    supportMock,
  );

  @Environment(AppEnvironment.production)
  @Environment(AppEnvironment.staging)
  @Singleton(as: DataSourceFactory)
  RemoteDataSourceFactory remoteFactory(
    UserRemoteDataSource userRemote,
    AuthRemoteDataSource authRemote,
    AccountRemoteDataSource accountRemote,
    BillingRemoteDataSource billingRemote,
    PackageRemoteDataSource packageRemote,
    NetworkRemoteDataSource networkRemote,
    SupportRemoteDataSource supportRemote,
  ) => RemoteDataSourceFactory(
    userRemote,
    authRemote,
    accountRemote,
    billingRemote,
    packageRemote,
    networkRemote,
    supportRemote,
  );
}
