class ApiConstants {
  ApiConstants._();

  // Base Url
  static const devBaseUrl = 'https://mysterybox-swd-be.onrender.com';
  static const stgBaseUrl = 'https://api.github.com';
  static const prodBaseUrl = 'https://api.github.com';

  // User
  static const userLogin = '/api/v1/login';
  static const userLogout = '/login/logout';
  static const userMe = '/login/me';
  static const userRegister = '/api/v1/register';

  // Todo
  static const task = '/task';
  static const addTask = '/task';
  static const updateTask = '/task/{id}';
  static const deleteTask = '/task/{id}';

  static const repository = '/repositories/{id}';

  // Home
  static const homeGetPackage = '/api/v1/get-package';
  static const homeGetProductDetail =
      '/api/Home/get-product-detail-by/{productId}';
  static const getThemes = '/api/v1/get-themes?search=tr&status=1';

  //order
  static const postOrder = '/api/Order/add-order';

  // auth
  static const auth = '/api/Auth/login';
  static const nonAuthenticatedPaths = [];
}
