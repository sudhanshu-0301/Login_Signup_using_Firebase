import 'package:assignment_app/screens/login_screen.dart';
import 'package:assignment_app/screens/register_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //initially printing the login page
  bool showLoginPage = true;
  //toggle between login and register
  void toggleLoginOrRegisterPage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: toggleLoginOrRegisterPage);
    } else {
      return RegisterPage(
        onTap: toggleLoginOrRegisterPage,
      );
    }
  }
}
