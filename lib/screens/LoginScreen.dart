import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/HeaderText.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("/images/bg-login.png"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HeaderText(
                      placeHolder: "Welcome!",
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 32),
                  HeaderText(
                      placeHolder: "to Synthia",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 18),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 8.0),
                  height: 345,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.24,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const HeaderText(
                                placeHolder: "Login",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000),
                                fontSize: 20,
                              ),
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const HeaderText(
                                        placeHolder: "Citizen Number",
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF344054),
                                        fontSize: 14,
                                      ),
                                      SizedBox(
                                        height: 40,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.all(8),
                                              isCollapsed: true,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              hintText: "X-XXX-XXX-XXX"),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    child: SizedBox(
                                      width: 235,
                                      height: 40,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          )),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color(0xFF303ED9)),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                        ),
                                        onPressed: () {},
                                        child: const Text('Login'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const HeaderText(
                                placeHolder: "For Patient in Hospital",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF98A2B3),
                                fontSize: 12,
                              ),
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
