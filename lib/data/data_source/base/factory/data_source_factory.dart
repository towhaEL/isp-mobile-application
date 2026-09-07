import 'package:isp_selfcare/data/data_source/account/account_data_source.dart';
import 'package:isp_selfcare/data/data_source/auth/auth_data_source.dart';
import 'package:isp_selfcare/data/data_source/billing/billing_data_source.dart';
import 'package:isp_selfcare/data/data_source/network/network_data_source.dart';
import 'package:isp_selfcare/data/data_source/package/package_data_source.dart';
import 'package:isp_selfcare/data/data_source/support/support_data_source.dart';
import 'package:isp_selfcare/data/data_source/user/user_data_source.dart';

/// The Abstract Factory interface.
///
/// Repositories depend on this rather than on a concrete data source, so the
/// flavour — not the repository — decides whether the app talks to a backend or
/// to the offline fixtures.
abstract class DataSourceFactory {
  UserDataSource createUserDataSource();
  AuthDataSource createAuthDataSource();
  AccountDataSource createAccountDataSource();
  BillingDataSource createBillingDataSource();
  PackageDataSource createPackageDataSource();
  NetworkDataSource createNetworkDataSource();
  SupportDataSource createSupportDataSource();
}
