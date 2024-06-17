class ApiConstants {
  ApiConstants._();

  // Base Url
  static const devBaseUrl = 'https://mysterybox-swd-be.onrender.com';
  static const stgBaseUrl = 'https://api.github.com';
  static const prodBaseUrl = 'https://api.github.com';

  // User
  static const userLogin = '/api/v1/login';
  static const userRegister = '/api/v1/register';
  static const getProfiles = '/api/v1/get-profiles';

  // Home
  static const homeGetPackage = '/api/v1/get-package';
  static const homeGetProductDetail =
      '/api/Home/get-product-detail-by/{productId}';
  static const getThemes = '/api/v1/get-themes';

  // MysteryBox
  static const getMysteryBox = '/api/v1/get-mysterybox';

  ////addOrderPackage
  static const addOrderPackage = '/api/v1/add-order-package/5';

  /// /api/v1/update-profile/${kidId}
  static const updateProfile = '/api/v1/update-profile/{profileId}';
}
