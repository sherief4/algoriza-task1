import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/modules/common_widgets/have_an_account.dart';
import 'package:task1/modules/login/login_page.dart';
import 'package:task1/modules/on_boarding/on_boarding_item.dart';
import 'package:task1/modules/sign_up/signup_page.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController(
    initialPage: 0,
  );
  double position = 0.0;

  void changePosition(int curPosition) {
    setState(() {
      position = curPosition.toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<OnBoardingItem> onBoardingItems = const [
      OnBoardingItem(
        title: 'Get food delivery to your doorstep asap',
        details:
            'We have young and professional delivery team that will bring your food as soon as possible to your door step',
        centerImage: 'assets/images/1.png',
      ),
      OnBoardingItem(
        title: 'Buy any food from your favourite restaurant',
        details:
            'We are constantly adding your favourite restaurant throughout the territory around your area carefully selected',
        centerImage: 'assets/images/2.png',
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 75.0,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: MaterialButton(
                padding: const EdgeInsets.all(8.0),
                onPressed: () {
                  navigateTo(context, LoginPage());
                },
                child: const Text(
                  'Skip',
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '7',
                  style: TextStyle(
                      color: myOrange,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Krave',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  changePosition(index);
                },
                children: onBoardingItems,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
              ),
              child: DotsIndicator(
                dotsCount: onBoardingItems.length,
                position: position,
                decorator: DotsDecorator(
                  color: Colors.grey,
                  size: const Size(18.0, 9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeColor: myOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    12.0,
                  ),
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  navigateTo(context, LoginPage());
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            HaveAnAccount(
              mainText: 'Don\'t have an account? ',
              buttonText: 'Sign Up',
              onPressed: () {
                navigateTo(context, SignupPage());
              },
              buttonColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
