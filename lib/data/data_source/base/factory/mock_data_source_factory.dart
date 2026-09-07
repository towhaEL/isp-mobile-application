import 'package:isp_selfcare/data/data_source/account/account_data_source.dart';
import 'package:isp_selfcare/data/data_source/account/mock/account_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/auth/auth_data_source.dart';
import 'package:isp_selfcare/data/data_source/auth/mock/auth_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/billing/billing_data_source.dart';
import 'package:isp_selfcare/data/data_source/billing/mock/billing_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/network/mock/network_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/network/network_data_source.dart';
import 'package:isp_selfcare/data/data_source/package/mock/package_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/package/package_data_source.dart';
import 'package:isp_selfcare/data/data_source/support/mock/support_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/support/support_data_source.dart';
import 'package:isp_selfcare/data/data_source/user/mock/user_mock_data_source.dart';
import 'package:isp_selfcare/data/data_source/user/user_data_source.dart';

/// Binds every data source to its offline implementation. Selected for the
/// `development` flavour, which therefore runs with no backend at all.
class MockDataSourceFactory implements DataSourceFactory {
  MockDataSourceFactory(
    this._userMock,
    this._authMock,
    this._accountMock,
    this._billingMock,
    this._packageMock,
    this._networkMock,
    this._supportMock,
  );

  final UserMockDataSource _userMock;
  final AuthMockDataSource _authMock;
  final AccountMockDataSource _accountMock;
  final BillingMockDataSource _billingMock;
  final PackageMockDataSource _packageMock;
  final NetworkMockDataSource _networkMock;
  final SupportMockDataSource _supportMock;

  @override
  UserDataSource createUserDataSource() => _userMock;

  @override
  AuthDataSource createAuthDataSource() => _authMock;

  @override
  AccountDataSource createAccountDataSource() => _accountMock;

  @override
  BillingDataSource createBillingDataSource() => _billingMock;

  @override
  PackageDataSource createPackageDataSource() => _packageMock;

  @override
  NetworkDataSource createNetworkDataSource() => _networkMock;

  @override
  SupportDataSource createSupportDataSource() => _supportMock;
}
