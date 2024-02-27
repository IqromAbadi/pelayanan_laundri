import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pelayanan_laundri/utils/constants.dart';
import 'package:pelayanan_laundri/utils/helper.dart';
import 'package:pelayanan_laundri/widgets/app_button.dart';
import 'package:pelayanan_laundri/widgets/input_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: 0.0,
                top: -20.0,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset("assets/images/mesin.png"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 15.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 50.0,
                          ),
                        ),
                        const Center(
                          child: Column(
                            children: [
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'FontPuppins'),
                              ),
                              Text(
                                "ACCOUNT",
                                style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'FontPuppins'),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "Laundree! sudah menantikan kamu, ayo mulai laporkan keadaan terkini.",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontFamily: 'FontPuppins'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          color: Colors.white),
                      padding: const EdgeInsets.all(24.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            //Input Widget Textfield
                            const InputWidget(
                              topLabel: "Email",
                              hintText: "Masukan email",
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const InputWidget(
                              topLabel: "Password",
                              obscureText: true,
                              hintText: "Masukan password",
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Lupa Password ?",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            AppButton(
                              type: ButtonType.PRIMARY,
                              text: "Masuk",
                              onPressed: () {
                                nextScreen(context, "/dashboard");
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
