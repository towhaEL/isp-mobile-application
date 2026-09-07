import 'package:isp_selfcare/core/env/api_base_url.dart';
import 'package:isp_selfcare/core/env/app_environment.dart';
import 'package:isp_selfcare/core/env/env.dart';

class ProductionConfig extends Env {
  @override
  String name = AppEnvironment.production;
  @override
  String baseUrl = ApiBaseUrl.production;
}
