import 'package:doan_flutter/constant.dart';
import 'package:doan_flutter/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool boolText = true;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;

  void dispore() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundAppBar,
      body: Form(
        key: _formKey,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 500,
                height: 500,
                margin: const EdgeInsets.all(margin),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(padding),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(padding),
                          child: Text(
                            "Đăng nhập",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: textColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: email(emailController),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: password(
                              sub: boolText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              controller: passController,
                              text: "Mật khẩu",
                              boolText: boolText,
                              function: () {
                                setState(() {
                                  boolText = !boolText;
                                });
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: padding / 2),
                          child: InkWell(
                              onTap: () {
                                // submit(
                                //     context, emailController, passController);
                                signIn(
                                    emailController.text, passController.text);
                                print(emailController.text);
                                print(passController.text);
                              },
                              child: Center(
                                  child: button(
                                      text: "Đăng nhập",
                                      h: 50.0,
                                      w: 250.0,
                                      radius: padding))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: Center(
                            child: Wrap(
                              children: [
                                textButton(
                                    text: "Quên mật khẩu?", press: () {}),
                                textButton(
                                    text: "Đăng Ký",
                                    press: () {
                                      Navigator.pushNamed(context, "/SignUp");
                                    })
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xffc4c4c4),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding / 2),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/icons/icon_google.png",
                                width: 70,
                                height: 40,
                              ),
                              textButton(text: "Đăng nhập với google"),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  submit(BuildContext context, TextEditingController email,
      TextEditingController password) async {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Đăng nhập thành công"),
                Navigator.pushNamed(context, "/Nav")
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
