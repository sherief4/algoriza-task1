import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/modules/common_widgets/custom_phone_number_picker.dart';
import 'package:task1/modules/common_widgets/default_button.dart';
import 'package:task1/modules/common_widgets/have_an_account.dart';
import 'package:task1/modules/sign_up/signup_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              height: 240.0,
              fit: BoxFit.cover,
              width: double.infinity,
              image: AssetImage('assets/images/3.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to Fashion Daily ',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Text(
                                'Help',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              CircleAvatar(
                                radius: 10.0,
                                child: Icon(
                                  Icons.question_mark,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    PhoneNumberPicker(
                      pickerController: phoneController,
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    DefaultButton(
                      text: 'Sign In',
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                        }
                      },
                      buttonColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1.0,
                            color: Colors.black38,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Text(
                            'Or',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1.0,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height:16.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage('assets/images/google.png'),
                              height: 30.0,
                              width: 30.0,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'Sign in with google',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    HaveAnAccount(
                      mainText: 'Doesn\'t have any account? ',
                      buttonText: 'Register Here',
                      onPressed: () {
                        navigateTo(context, SignupPage());
                      },
                      buttonColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      'Use the application according to policy rules. Any kind of violation will be subjected to sanctions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
