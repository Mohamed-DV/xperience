class ApiRoutes {
  // AUTH URLbase
  static const login = "/auth/login";
  static const register = "/auth/register";
  static const oauthVerify = "/auth/oauth-verify";
  static const getHistory = "/audio/user";
  static const resetPassword = "/auth/reset-password";
  static const verifyOtp = "/auth/verify-otp";
  static const updatePassword = "/auth/update-password";

  // ACTIVITES URL
  static const getActivites = "/activites";
  static const getsportinglevel = "/sporting-level";
  static const completeUserInfo = "/users/complete-user-info";
  static const favoris = "/favorites";
  static const cancelReservation = "/reservations/cancel/";

  // HOME

  static const home = "/home";

  //favoris

  // RESERVATION
  static const reservation = "/reservations";
  static const getReservationById = "/home/event/";
  static const createReservations = "/reservations/create";
  static const updateReservation = "/reservations/update";

  // USER
  static const user = "/users/me";
  static const getUserById = "/users/";
  static const updateUser = "/users";
  static const changePassword = "/users/change-password";
  static const review = "/users/review-app";

  static const getUserProfile = "/users/profile";
}
