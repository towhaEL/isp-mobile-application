import 'package:isp_selfcare/core/env/api_base_url.dart';
import 'package:isp_selfcare/core/env/app_environment.dart';
import 'package:isp_selfcare/core/env/env.dart';

class DevelopmentConfig extends Env {
  @override
  String name = AppEnvironment.development;
  @override
  String baseUrl = ApiBaseUrl.development;
}
