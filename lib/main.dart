import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common/app_colors.dart';
import 'common/ui_helpers.dart';

void main() {
  runApp(const RonnieApp());
}

class RonnieApp extends StatelessWidget {
  const RonnieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Image.asset(
                        'assets/images/worldcup.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ), // mainImage
                ),

                verticalSpaceMedium,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 200,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kcFormOutlineColor,
                              width: 1,
                            ),
                          ),
                          child: TextFormField(
                            // controller: idInputController,
                            textAlignVertical: TextAlignVertical.center,
                            cursorColor: kcMediumGrey,
                            decoration: const InputDecoration(
                              hintText: 'ID',
                              hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: kcHintTextColor,
                              ),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.only(left: 25.0, right: 25.0),
                            ),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: kcBlackColor,
                            ),

                          ),
                        ), // ID
                        verticalSpaceSmall,
                        Container(
                          width: 200,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kcFormOutlineColor,
                              width: 1,
                            ),
                          ),
                          child: TextFormField(
                            // controller: passwordInputController,
                            obscureText: true,
                            textAlignVertical: TextAlignVertical.center,
                            cursorColor: kcMediumGrey,
                            decoration: const InputDecoration(
                              hintText: 'Passward',
                              hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: kcHintTextColor,
                              ),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding:
                                  EdgeInsets.only(left: 25.0, right: 25.0),
                            ),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: kcBlackColor,
                            ),
                          ),
                        ), // PW
                      ],
                    ),
                    horizontalSpaceMedium,
                    Container(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        onPressed: () {},
                        // viewModel.navigateToAgreement(),
                        color: Colors.red.shade50,
                        // kcWhiteColor,
                        height: 90,
                        minWidth: 50,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: kcBlackColor,
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          '로그인',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: kcBlackColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                verticalSpaceMedium,
                // viewModel.isBusy
                //     ? const CircularProgressIndicator()
                //     : MaterialButton(
                //   onPressed: (){}, // viewModel.login(),
                //   color: kcButtonColor,
                //   height: 40,
                //   minWidth: double.infinity,
                //   elevation: 0,
                //   child: const Text(
                //     '로그인하기',
                //     style: TextStyle(
                //       fontSize: 12,
                //       fontWeight: FontWeight.w600,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                //    const Spacer(),
                MaterialButton(
                  onPressed: () {},
                  // viewModel.navigateToAgreement(),
                  color: Colors.red.shade50,
                  // kcWhiteColor,
                  height: 40,
                  minWidth: 200,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: kcBlackColor,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    '회원가입',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: kcBlackColor,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {}, // => viewModel.navigateToIdFind(),
                        child: const Text(
                          '아이디 찾기',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: kcBlackColor,
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {}, //viewModel.navigateToPasswordFind(),
                        child: const Text(
                          '비밀번호 찾기',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: kcBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpaceLarge,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
