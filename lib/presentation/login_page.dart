import 'package:flutter/material.dart';
import 'package:vapps_it_login/presentation/widgets/brand_image.dart';
import 'package:vapps_it_login/presentation/widgets/custom_text_button.dart';
import 'package:vapps_it_login/presentation/widgets/custom_textfield.dart';
import 'package:vapps_it_login/presentation/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bkground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Opacity(
          opacity: 0.90,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.2,
                  0.55,
                  0.68,
                  0.85,
                  1.0,
                ],
                colors: [
                  Colors.white,
                  Colors.grey.shade600,
                  Colors.grey.shade700,
                  Colors.grey.shade900,
                  Colors.black,
                ],
              ),
            ),
            child: ListView(
              children: [
                const BrandImage(),
                const CustomTextFormField(
                    title: 'Username',
                    hintText: 'Enter your username',
                    obscureText: false,
                    icon: Icon(Icons.person, color: Colors.white)),
                const SizedBox(height: 20),
                const CustomTextFormField(
                    title: 'Password',
                    hintText: 'Enter your password',
                    obscureText: true,
                    icon: Icon(Icons.lock, color: Colors.white)),
                const SizedBox(height: 20),
                const LoginButton(),
                const SizedBox(height: 20),
                CustomTextButton(
                  title: 'I forgot my Password',
                  onPressed: () {},
                  textStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                  allCaps: false,
                ),
                const SizedBox(height: 40),
                CustomTextButton(
                  title: 'Not a Memeber ? Register Now',
                  onPressed: () {},
                  allCaps: true,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 100),
                Text(' Simple Login UI by VApps-IT ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
