import 'package:isp_selfcare/data/data_source/account/account_data_source.dart';
import 'package:isp_selfcare/data/data_source/account/remote/account_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/auth/auth_data_source.dart';
import 'package:isp_selfcare/data/data_source/auth/remote/auth_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/base/factory/data_source_factory.dart';
import 'package:isp_selfcare/data/data_source/billing/billing_data_source.dart';
import 'package:isp_selfcare/data/data_source/billing/remote/billing_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/network/network_data_source.dart';
import 'package:isp_selfcare/data/data_source/network/remote/network_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/package/package_data_source.dart';
import 'package:isp_selfcare/data/data_source/package/remote/package_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/support/remote/support_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/support/support_data_source.dart';
import 'package:isp_selfcare/data/data_source/user/remote/user_remote_data_source.dart';
import 'package:isp_selfcare/data/data_source/user/user_data_source.dart';

/// Binds every data source to its HTTP implementation. Selected for the
/// `staging` and `production` flavours.
class RemoteDataSourceFactory implements DataSourceFactory {
  RemoteDataSourceFactory(
    this._userRemote,
    this._authRemote,
    this._accountRemote,
    this._billingRemote,
    this._packageRemote,
    this._networkRemote,
    this._supportRemote,
  );

  final UserRemoteDataSource _userRemote;
  final AuthRemoteDataSource _authRemote;
  final AccountRemoteDataSource _accountRemote;
  final BillingRemoteDataSource _billingRemote;
  final PackageRemoteDataSource _packageRemote;
  final NetworkRemoteDataSource _networkRemote;
  final SupportRemoteDataSource _supportRemote;

  @override
  UserDataSource createUserDataSource() => _userRemote;

  @override
  AuthDataSource createAuthDataSource() => _authRemote;

  @override
  AccountDataSource createAccountDataSource() => _accountRemote;

  @override
  BillingDataSource createBillingDataSource() => _billingRemote;

  @override
  PackageDataSource createPackageDataSource() => _packageRemote;

  @override
  NetworkDataSource createNetworkDataSource() => _networkRemote;

  @override
  SupportDataSource createSupportDataSource() => _supportRemote;
}
