import 'package:chatgpt_task/core/routes/app_routes.dart';
import 'package:chatgpt_task/pages/dashboard/presentation/views/dashboard_view.dart';
import 'package:chatgpt_task/pages/dashboard/presentation/views/widgets/page_one.dart';
import 'package:chatgpt_task/pages/dashboard/presentation/views/widgets/page_three.dart';
import 'package:chatgpt_task/pages/dashboard/presentation/views/widgets/page_two.dart';
import 'package:chatgpt_task/pages/empty_conversation/presentation/views/emptyConversation_view.dart';
import 'package:chatgpt_task/pages/get_answer/presentation/views/get_answer.dart';
import 'package:chatgpt_task/pages/logo/presentation/views/logo_view.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/splash_view.dart';
import 'package:chatgpt_task/pages/start_conversation/presentation/views/startConversation_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppPages {
  static const initial = AppRoutes.logo;

  static final routes = [
    GetPage(
        name: AppRoutes.logo,
        page: () => const LogoView(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashView(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.dashboard,
        page: () => const DashboardView(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.emptyConversation,
        page: () => const EmptyConversationView(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.getAnswer,
        page: () => const GetAnswerView(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.startConversation,
        page: () => const StartConversationView(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.startConversation,
        page: () => const PageOne(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.startConversation,
        page: () => const PageTwo(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.startConversation,
        page: () => const PageThree(),
        transition: Transition.fadeIn),
  ];
}