import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/modules/common_widgets/custom_phone_number_picker.dart';
import 'package:task1/modules/common_widgets/default_button.dart';
import 'package:task1/modules/common_widgets/default_text_form_filed.dart';
import 'package:task1/modules/common_widgets/have_an_account.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const Image(
                  height: 140.0,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  image: AssetImage('assets/images/3.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    top: 30.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
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
                          'Register',
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
                      height: 12.0,
                    ),
                    DefaultTextFormField(
                      label: 'Email',
                      inputType: TextInputType.emailAddress,
                      isPassword: false,
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Enter a valid email address';
                        }
                      },
                      hintText: "Eg. example@example.com",
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    PhoneNumberPicker(
                      pickerController: phoneController,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    DefaultTextFormField(
                      label: 'Password',
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'Enter a valid password';
                        }
                      },
                      inputType: TextInputType.visiblePassword,
                      isPassword: true,
                      hintText: "Password",
                      suffixIcon: Icons.visibility,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    DefaultButton(
                      text: 'Register',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          // use the email provided here
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
                      height: 16.0,
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
                      mainText: 'Has any account? ',
                      buttonText: 'Sign in Here',
                      onPressed: () {
                      Navigator.of(context).pop();
                      },
                      buttonColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'By registering your account, you agree to our',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'terms and conditions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
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
