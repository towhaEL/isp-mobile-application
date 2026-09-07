import 'package:isp_selfcare/data/models/request_model/base/base_request.dart';
import 'package:isp_selfcare/data/models/response_model/base/base_response.dart';

abstract class PackageDataSource {
  /// Plans the customer could move to, current one included.
  Future<List<PackageResponseModel>> getPackages();

  /// What switching mid-cycle costs today. Priced by the backend, never by the
  /// app — proration is a billing decision.
  Future<ProrationQuoteResponseModel> getProrationQuote({
    required int connectionId,
    required int packageId,
  });

  Future<void> changePackage({
    required int connectionId,
    required ChangePackageRequestModel request,
  });
}
