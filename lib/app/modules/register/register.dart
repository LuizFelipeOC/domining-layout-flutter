import 'package:domining_layout/app/modules/widgets/elevated_button_widget.dart';
import 'package:domining_layout/app/modules/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black54,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Signup',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormFielWidget(
                        textInputType: TextInputType.emailAddress,
                        label: 'Name',
                        obscureText: false,
                        onChange: (String value) => {},
                      ),
                      const SizedBox(height: 10),
                      TextFormFielWidget(
                        textInputType: TextInputType.text,
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
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 56,
                        child: ElevatedButtonWidget(
                          color: Colors.greenAccent,
                          onPressed: () {},
                          text: 'SIGN UP',
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
