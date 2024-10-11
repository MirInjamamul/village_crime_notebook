import 'package:get/get.dart';

import '../../presentation/view/pages/splash/splash_screen.dart';

class RouteHelper {
  // static const String dashBoard = '/';
  static const String splashScreen = '/splashScreen';
  // static const String onBoardingScreen = '/onBoardingScreen';
  // static const String loginScreen = '/loginScreen';
  // static const String signUpScreen = '/signUpScreen';
  // static const String verificationScreen = '/verificationScreen';
  // static const String forgetPasswordScreen = '/forgetPasswordScreen';
  // static const String changePasswordScreen = '/changePasswordScreen';
  //
  // // NGO
  // static const String ngoSelectionScreen = '/ngoSelectionScreen';
  //
  // static const String menuScreen = '/menu';
  //
  // static const String notificationScreen = '/notification';
  //
  // static const String findNGOScreen = '/findNGOScreen';
  // static const String bookmarkNGOScreen = '/bookmarkNGOScreen';
  //
  // static const String manageNGODashboardScreen = '/manageNGODashboardScreen';
  // static const String claimNGOScreen = '/claimNGOScreen';
  //
  // /// Campaign
  // static const String campaignDetailsScreen = '/campaignDetailsScreen';
  // static const String campaignTargetScreen = '/campaignTargetScreen';
  // static const String campaignTeamScreen = '/campaignTeamScreen';
  //
  // static const String claimNGOSearchScreen = '/claimNGOSearchScreen';
  // static const String claimNGOVerificationScreen =
  //     '/claimNGOVerificationScreen';
  // static const String claimNGOReviewSubmitScreen =
  //     '/claimNGOReviewSubmitScreen';
  // static const String registerNGOScreen = '/registerNGOScreen';
  // static const String createProjectScreen = '/createProjectScreen';
  // static const String paymentSuccessScreen = '/paymentSuccessScreen';
  // static const String subscriptionScreen = '/subscriptionScreen';
  // static const String claimInReviewListScreen = '/claimInReviewListScreen';
  //
  // static const String ngoProfileScreen = '/ngoProfileScreen';
  //
  // static const String newsArticlesDetailsScreen = '/newsArticlesDetailsScreen';
  //
  // static const String manageMyNGOScreen = '/manageMyNgo';
  // static const String ngoProfileInfoScreen = '/ngoProfileInformationScreen';
  // static const String myNGOListScreen = '/ngoListScreen';
  //
  // static const String editNGOInfoScreen = '/editNGOInfoScreen';
  // static const String editNGOAdditionalInfoScreen =
  //     '/editNGOAdditionalInfoScreen';
  // static const String projectScreen = '/projectScreen';
  // static const String projectSearchScreen = '/projectSearchScreen';
  // static const String projectDetailsScreen = '/projectDetailsScreen';
  // static const String createSurveyParticipateScreen =
  //     '/createSurveyParticipateScreen';
  //
  // // Survey Module
  // static const String surveyListScreen = '/surveyListScreen';
  // static const String surveyScreen = '/dashboard/surveyFormPreview';
  //
  // // language
  // static const String languageScreen = '/language';
  //
  // //edit profile
  // static const String editProfileScreen = '/editProfileScreen';
  //
  // // Donation Campaign
  // static const String donationCampaignScreen = '/donationCampaignScreen';
  // static const String donationCampaignDetailsScreen =
  //     '/donationCampaignDetailsScreen';
  // static const String donationCampaignListScreen =
  //     '/donationCampaignListScreen';
  //
  // static String getDashboardScreen() => dashBoard;
  // static String getLoginScreen() => loginScreen;
  static String getSplashScreen() => splashScreen;
  // static String getSOnBoardingScreen() => onBoardingScreen;
  // static String getSignUpScreen() => signUpScreen;
  // static String getVerificationScreen() => verificationScreen;
  // static String getForgetPasswordScreen() => forgetPasswordScreen;
  // static String getChangePasswordScreen() => changePasswordScreen;
  // static String getNGOSelectionScreen() => ngoSelectionScreen;
  //
  // static String getMenuScreen() => menuScreen;
  //
  // static String getNotificationScreen() => notificationScreen;
  //
  // static String getFindNGOScreen() => findNGOScreen;
  // static String getBookmarkNGOScreen() => bookmarkNGOScreen;
  //
  // static String getNewsArticlesDetailsScreen() => newsArticlesDetailsScreen;
  //
  // static String getManageNGODashboardScreen() => manageNGODashboardScreen;
  // static String getClamNGOScreen() => claimNGOScreen;
  // static String getCampaignDetailsScreen() => campaignDetailsScreen;
  // static String getCampaignTargetScreen() => campaignTargetScreen;
  // static String getCampaignTeamScreen() => campaignTeamScreen;
  // static String getClaimNGOSearchScreen() => claimNGOSearchScreen;
  // static String getClaimNGOVerificationScreen() => claimNGOVerificationScreen;
  // static String getClaimNGOReviewSubmitScreen() => claimNGOReviewSubmitScreen;
  // static String getRegisterNGOScreen() => registerNGOScreen;
  // static String getCreateProjectScreen() => createProjectScreen;
  // static String getPaymentSuccessScreen() => paymentSuccessScreen;
  // static String getSubscriptionScreen() => subscriptionScreen;
  // static String getClaimInReviewListScreen() => claimInReviewListScreen;
  //
  // static String getNGOProfileScreen() => ngoProfileScreen;
  // static String getNGOProfileInfoScreen() => ngoProfileInfoScreen;
  // static String getMyNGOListScreen() => myNGOListScreen;
  //
  // static String getEditNGOInfoScreen() => editNGOInfoScreen;
  // static String getEditNGOAdditionalInfoScreen() => editNGOAdditionalInfoScreen;
  // static String getManageMyNGOScreen() => manageMyNGOScreen;
  //
  // static String getProjectScreen() => projectScreen;
  // static String getProjectSearchScreen() => projectSearchScreen;
  // static String getProjectDetailsScreen() => projectDetailsScreen;
  // static String getCreateSurveyParticipateScreen() =>
  //     createSurveyParticipateScreen;
  //
  // static String getSurveyListScreen(
  //     {required String projectId, required String companyId}) =>
  //     '$surveyListScreen/$projectId/$companyId';
  // static String getSurveyTopicScreen({required String formId}) =>
  //     '$surveyScreen/$formId';
  //
  // static String getLanguageScreen() => languageScreen;
  //
  // static String getEditProfileScreen() => editProfileScreen;
  //
  // static String getDonationCampaignScreen() => donationCampaignScreen;
  //
  // static String getDonationCampaignDetailsScreen() =>
  //     donationCampaignDetailsScreen;
  // static String getDonationCampaignListScreen() => donationCampaignListScreen;
  //
  static List<GetPage> routes = [
  //   GetPage(
  //       name: dashBoard,
  //       page: () => const DashboardScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: loginScreen,
  //       page: () => const LoginScreen(),
  //       transition: Transition.rightToLeftWithFade),
    GetPage(name: splashScreen, page: () => const SplashScreen()),
  //   GetPage(name: onBoardingScreen, page: () => const OnboardingScreen()),
  //   GetPage(
  //       name: signUpScreen,
  //       page: () => const SignUpScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: verificationScreen,
  //       page: () => const VerificationScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: forgetPasswordScreen,
  //       page: () => const ForgetPasswordScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: changePasswordScreen,
  //       page: () => const ChangePasswordScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: ngoSelectionScreen,
  //       page: () => const NGOSelectionScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: ngoProfileInfoScreen,
  //       page: () => const NgoProfileInfoScreen(),
  //       transition: Transition.leftToRightWithFade),
  //   GetPage(
  //       name: menuScreen,
  //       page: () => const MenuScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: notificationScreen,
  //       page: () => const NotificationScreen(),
  //       transition: Transition.leftToRightWithFade),
  //   GetPage(
  //       name: verificationScreen,
  //       page: () => const VerificationScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: forgetPasswordScreen, page: () => const ForgetPasswordScreen()),
  //   GetPage(
  //       name: changePasswordScreen, page: () => const ChangePasswordScreen()),
  //   GetPage(name: ngoSelectionScreen, page: () => const NGOSelectionScreen()),
  //   GetPage(name: menuScreen, page: () => const MenuScreen()),
  //   GetPage(name: notificationScreen, page: () => const NotificationScreen()),
  //
  //   GetPage(
  //       name: changePasswordScreen,
  //       page: () => const ChangePasswordScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: ngoSelectionScreen,
  //       page: () => const NGOSelectionScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: menuScreen,
  //       page: () => const MenuScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   // GetPage(name: setupScreen, page: () => const SetupScreen()),
  //   // GetPage(name: setupOrganizationScreen, page: () => const SetupOrganization()),
  //   GetPage(
  //       name: notificationScreen,
  //       page: () => const NotificationScreen(),
  //       transition: Transition.leftToRightWithFade),
  //   GetPage(
  //       name: findNGOScreen,
  //       page: () => const FindNGO(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: claimNGOScreen,
  //       page: () => const ClaimNGO(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: campaignDetailsScreen,
  //       page: () => const CampaignDetails(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: campaignTargetScreen,
  //       page: () => const CampaignTarget(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: campaignTeamScreen,
  //       page: () => const CampaignTeam(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: registerNGOScreen,
  //       page: () => const RegisterNGO(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: bookmarkNGOScreen,
  //       page: () => const BookmarkNGO(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: ngoProfileScreen,
  //       page: () => const NGOProfile(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: createProjectScreen,
  //       page: () => const CreateProjectScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: paymentSuccessScreen,
  //       page: () => const PaymentSuccessScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: claimNGOSearchScreen,
  //       page: () => const ClaimNgoSearchScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: claimNGOVerificationScreen,
  //       page: () => const ClaimNGOVerification(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: claimNGOReviewSubmitScreen,
  //       page: () => const ClaimReviewSubmit(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: manageNGODashboardScreen,
  //       page: () => const ManageNGODashboard(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: subscriptionScreen,
  //       page: () => const SubscriptionScreen(),
  //       transition: Transition.leftToRightWithFade),
  //   GetPage(
  //       name: ngoProfileInfoScreen, page: () => const NgoProfileInfoScreen()),
  //   GetPage(
  //       name: editNGOInfoScreen,
  //       page: () => const EditNGOInfoScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: editNGOAdditionalInfoScreen,
  //       page: () => const EditNGOAdditionalInfoScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: manageMyNGOScreen,
  //       page: () => const ManageMyNgoScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: myNGOListScreen,
  //       page: () => const MyNGOListScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: newsArticlesDetailsScreen,
  //       page: () => const NewsArticlesDetailsScreen()),
  //   GetPage(
  //       name: projectScreen,
  //       page: () => const ProjectScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: '$surveyListScreen/:projectId/:companyId',
  //       page: () => const SurveyListScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: '$surveyScreen/:formId',
  //       page: () => const SurveyScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: manageNGODashboardScreen,
  //       page: () => const ManageNGODashboard(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: subscriptionScreen,
  //       page: () => const SubscriptionScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: ngoProfileInfoScreen,
  //       page: () => const NgoProfileInfoScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: editNGOInfoScreen,
  //       page: () => const EditNGOInfoScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: editNGOAdditionalInfoScreen,
  //       page: () => const EditNGOAdditionalInfoScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: manageMyNGOScreen,
  //       page: () => const ManageMyNgoScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: myNGOListScreen,
  //       page: () => const MyNGOListScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: newsArticlesDetailsScreen,
  //       page: () => const NewsArticlesDetailsScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: projectScreen,
  //       page: () => const ProjectScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: '$surveyListScreen/:projectId/:companyId',
  //       page: () => const SurveyListScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: '$surveyScreen/:formId',
  //       page: () => const SurveyScreen(),
  //       transition: Transition.leftToRightWithFade),
  //   GetPage(
  //       name: projectDetailsScreen,
  //       page: () => ProjectDetailsScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: projectSearchScreen,
  //       page: () => const ProjectSearchScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: createSurveyParticipateScreen,
  //       page: () => const CreateSurveyParticipateScreen(),
  //       transition: Transition.rightToLeftWithFade),
  //   GetPage(
  //       name: languageScreen,
  //       page: () => const LanguageScreen(),
  //       transition: Transition.rightToLeftWithFade),
  ];
}
