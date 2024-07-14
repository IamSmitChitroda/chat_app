import 'package:chat_app/headers.dart';

class Routes {
  static String loginPage = '/login';
  static String signUpPage = '/signUp';
  static String homepage = '/home';
  static String chatPage = '/chat';

  static List<GetPage> routes = [
    GetPage(
      name: loginPage,
      page: () => const LoginScreen(),
    ),
    // GetPage(
    //   name: signUpPage,
    //   page: () => const SignUpScreen(),
    // ),
    // GetPage(
    //   name: homepage,
    //   page: () => const HomeScreen(),
    // ),
    // GetPage(
    //   name: chatPage,
    //   page: () => const ChatScreen(),
    // ),
  ];
}
