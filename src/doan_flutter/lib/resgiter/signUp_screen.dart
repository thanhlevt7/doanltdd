import 'package:doan_flutter/constant.dart';
import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
 final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: backgroundAppBar,
      body: GestureDetector(
        onTap: () {
            FocusScope.of(context).unfocus();
          },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 500,
              height: 490,
              margin: const EdgeInsets.all(padding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(padding),
                ),
              ),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Padding(
                  padding: EdgeInsets.all(padding),
                  child: Text(
                    "Đăng Ký",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: textColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all( padding/2),
                  child: email(emailController),
                ),
                Padding(
                  padding: const EdgeInsets.all( padding/2),
                  child:
                      password(controller: passController, text: "Mật khẩu"),
                ),
                Padding(
                    padding: const EdgeInsets.all( padding/2),
                    child: password(
                        controller: confirmPassController,
                        text: "Nhập lại mật khẩu")),
                Padding(
                  padding: const EdgeInsets.only(top: padding / 2),
                  child: InkWell(onTap: () {}, child: Center(child: button(text: "Đăng Ký",h: 50.0,w: 250.0,radius: padding))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: padding),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(child: button(text: "Quay lại",h: 50.0,w: 250.0,radius: padding))),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
