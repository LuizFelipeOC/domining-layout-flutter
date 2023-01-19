import 'package:domining_layout/app/core/shared/app_images.dart';
import 'package:domining_layout/app/modules/widgets/elevated_button_widget.dart';
import 'package:domining_layout/app/modules/widgets/social_lite_button_widget.dart';
import 'package:domining_layout/app/modules/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(
            top: 80,
            bottom: 40,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 60,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                'Welcome,',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Sign in to continue',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          TextButtonWidget(
                            onPressed: () => Navigator.of(context).pushNamed(
                              '/register',
                            ),
                            text: 'SIGN UP',
                          ),
                        ],
                      ),
                      const SizedBox(height: 60),
                      TextFormFielWidget(
                        textInputType: TextInputType.emailAddress,
                        label: 'E-mail',
                        obscureText: false,
                        onChange: (String value) => {},
                      ),
                      const SizedBox(height: 10),
                      TextFormFielWidget(
                        textInputType: TextInputType.text,
                        label: 'Password',
                        obscureText: true,
                        onChange: (String value) => {},
                      ),
                      const SizedBox(height: 5),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: TextButtonWidget(
                            text: "Forgot yout password?",
                            onPressed: () => {},
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 56,
                        child: ElevatedButtonWidget(
                          color: Colors.greenAccent,
                          onPressed: () {},
                          text: 'SIGN IN',
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: const Text(
                  "- OR -",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
              SocialLiteButtonWidget(
                onPressed: () => {},
                pathUrl: AppImages.facebookIcon,
                text: 'Sign in with facebook',
              ),
              const SizedBox(height: 10),
              SocialLiteButtonWidget(
                onPressed: () => {},
                pathUrl: AppImages.googleIcon,
                text: 'Sign in with gooogle',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.greenAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
