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
  static const getChooseProfile = '/api/v1/get-choose-profiles';

  ////addOrderPackage
  static const addOrderPackage = '/api/v1/add-order-package/{packageId}';

  /// Profile
  static const updateProfile = '/api/v1/update-profile/{id}';
  static const createProfile = '/api/v1/create-profile';

  static const getPackageOrderByUserId = '/api/v1/get-packageorderbyuserid';

  static const createPayment = '/api/v1/create-payment';
}
