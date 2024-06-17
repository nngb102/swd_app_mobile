import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../../utilities/constants/api_constants.dart';
import '../auth/auth_login.dart';
import '../home/package_response.dart';
import '../my_stery_box/mystery_box_response.dart';
import '../package_themes/theme_response.dart';
import '../profile/profile_response.dart';
import '../sign_in/user.dart';
import '../sign_up/user_request.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConstants.devBaseUrl)
abstract class ApiClient {
  factory ApiClient(
    Dio dio, {
    String? authToken,
  }) {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (authToken != null) {
          options.headers['Authorization'] = 'Bearer $authToken';
        }
        return handler.next(options);
      },
    ));
    return _ApiClient(dio);
  }

  @GET(ApiConstants.homeGetPackage)
  Future<PackageResponse> getPackage(
    @Query('search') String search,
    @Query('status') int status,
  );

  @GET(ApiConstants.getThemes)
  Future<ThemeResponse> getThemes(
    @Query('search') String search,
    @Query('status') int status,
  );

  @GET(ApiConstants.getProfiles)
  Future<ProfileResponse> getProfiles();

  @GET(ApiConstants.getMysteryBox)
  Future<MysteryBoxResponse> getMysteryBox();

  @POST(ApiConstants.userLogin)
  Future<AuthLogin> postLogIn(
    @Body() User user,
  );

  @POST(ApiConstants.userRegister)
  Future<AuthLogin> postRegister(
    @Body() UserRequest userRequest,
  );
}
