import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/constant.dart';
import 'package:doan_flutter/model/user_model.dart';
import 'package:doan_flutter/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  final fullnameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;

  void dispore() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    fullnameController.dispose();
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
                height: 650 ,
                margin: const EdgeInsets.all(padding),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(padding),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        padding: const EdgeInsets.all(padding / 3),
                        child: email(emailController),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding / 3),
                        child: password(
                            controller: passController, text: "Mật khẩu"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding / 3),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 22,
                            color: textColor,
                          ),
                          controller: confirmPassController,
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_open),
                            suffixStyle: const TextStyle(
                              color: textColor,
                            ),
                            suffixIcon: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.visibility,
                                  color: Colors.grey.shade500,
                                )),
                            errorStyle: const TextStyle(fontSize: 16),
                            labelStyle: const TextStyle(
                              fontSize: 22,
                              color: textColor,
                            ),
                            labelText: "Nhập lại mật khẩu",
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.length < 6 ||
                                passController.text !=
                                    confirmPassController.text) {
                              return 'Mật khẩu không khớp';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding / 3),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 22,
                            color: textColor,
                          ),
                          controller: fullnameController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.abc_rounded),
                            suffixStyle: TextStyle(
                              color: textColor,
                            ),
                            labelStyle: TextStyle(
                              fontSize: 22,
                              color: textColor,
                            ),
                            labelText: "Nhập họ và tên",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: padding / 2),
                        child: InkWell(
                            onTap: () {
                              signUp(emailController.text, passController.text);
                              print(emailController.text);
                              print(passController.text);
                              print(fullnameController.text);
                            },
                            child: Center(
                                child: button(
                                    text: "Đăng Ký",
                                    h: 50.0,
                                    w: 250.0,
                                    radius: padding))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: padding),
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Center(
                                child: button(
                                    text: "Quay lại",
                                    h: 50.0,
                                    w: 250.0,
                                    radius: padding))),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirebase()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirebase() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.fullname = fullnameController.text;
    userModel.password = passController.text;

   await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
        Fluttertoast.showToast(msg: "Đăng ký tài khoản thành công");
        Navigator.pushNamed(context, "/");
  }
}
