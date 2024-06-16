import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../../utilities/constants/api_constants.dart';
import '../auth/auth_login.dart';
import '../home/package_response.dart';
import '../package_themes/theme_response.dart';
import '../sign_in/user.dart';
import '../sign_up/user_request.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConstants.devBaseUrl)
abstract class ApiClient {
  factory ApiClient(
    Dio dio,
  ) = _ApiClient;

  @GET(ApiConstants.homeGetPackage)
  Future<PackageResponse> getPackage(
    @Query('search') String search,
    @Query('status') int status,
  );

  @GET(ApiConstants.getThemes)
  Future<ThemeResponse> getThemes();

  @POST(ApiConstants.userLogin)
  Future<AuthLogin> postLogIn(
    @Body() User user,
  );

  @POST(ApiConstants.userRegister)
  Future<AuthLogin> postRegister(
    @Body() UserRequest userRequest,
  );
}
