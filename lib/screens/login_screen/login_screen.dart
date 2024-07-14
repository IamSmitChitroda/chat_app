import 'package:chat_app/headers.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    final LoginController loginController = Get.put(LoginController());
    Size size = MediaQuery.sizeOf(context);
    return GetBuilder<LoginController>(
      builder: (controller) {
        // var formKey = GlobalKey<FormState>();
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: AppBar(),
          ),
          /*body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(padding + 5),
                height: size.height,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 0),
                          const FlutterLogo(size: 80.0),
                          const SizedBox(height: 20),
                          Text(
                            "Login",
                            style: themeData.textTheme.displayLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                              height: 2,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: controller.isPolicyCheck,
                                onChanged: (bool? value) async {
                                  // controller.updatePrivacy();
                                },
                              ),
                              //,
                            ],
                          ),
                          const SizedBox(height: 50),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (controller.isLoading) const LoadingView(),
            ],
          ),*/
        );
      },
    );
  }
}
