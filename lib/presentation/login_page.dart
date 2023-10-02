import 'package:bellboy_rider/core/config/colors.dart';
import 'package:bellboy_rider/presentation/controllers/login_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: height * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: height * 0.12),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontSize: height * 0.03,
                        color: AppColors.dark,
                        fontWeight: FontWeight.w900),
                  )),
              TextField(
                controller: _controller,
                onChanged: controller.setEmail,
                cursorColor: AppColors.kSecondaryColor,
                cursorHeight: height * 0.03,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: AppColors.lightDark),
                  contentPadding: EdgeInsets.only(
                      top: height * 0.03, bottom: height * 0.01),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.dark),
                  ),
                  suffix: GestureDetector(
                    child: Icon(
                      Icons.highlight_remove_sharp,
                      color: AppColors.lightDark,
                      size: height * 0.025,
                    ),
                    onTap: () => _controller.clear(),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.dark),
                  ),
                ),
                style: TextStyle(
                    color: AppColors.dark,
                    fontSize: height * 0.023,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none),
              ),
              Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'find e-mail',
                      style: TextStyle(
                          color: AppColors.lightDark,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w600),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                        },
                      children: <TextSpan>[
                        TextSpan(
                          text: '   |   ',
                          style: TextStyle(
                            color: AppColors.lightDark,
                            fontSize: height * 0.02,
                          ),
                        ),
                        TextSpan(
                            text: 'Find password',
                            style: TextStyle(
                              color: AppColors.lightDark,
                              fontSize: height * 0.02,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              })
                      ]),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Obx(() {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: AppColors.dark),
                    onPressed: controller.isEmailValid.value
                        ? () {
                            // Handle the 'Next' button click
                          }
                        : null,
                    child: controller.isEmailValid.value
                        ? const Text('Next')
                        : const Text(
                            'Enter your e-mail address',
                            style: TextStyle(color: Colors.white),
                          ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
