import 'package:isp_selfcare/core/env/api_base_url.dart';
import 'package:isp_selfcare/core/env/app_environment.dart';
import 'package:isp_selfcare/core/env/env.dart';

class StagingConfig extends Env {
  @override
  String name = AppEnvironment.staging;
  @override
  String baseUrl = ApiBaseUrl.staging;
}
