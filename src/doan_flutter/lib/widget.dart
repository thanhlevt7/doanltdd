import 'package:doan_flutter/constant.dart';
import 'package:flutter/material.dart';

Widget email(controller) => TextFormField(
      style: const TextStyle(
        fontSize: 20,
        color: textColor,
      ),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      onFieldSubmitted: (value) {},
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.email_outlined,
          color: textColor,
        ),
        floatingLabelStyle: TextStyle(
          fontSize: 22,
          color: textColor,
        ),
        focusColor: textColor,
        errorStyle: TextStyle(fontSize: 16),
        labelText: "Tài khoản",
        labelStyle: TextStyle(
          fontSize: 22,
          color: textColor,
        ),
      ),
      validator: (value) {
        if (value!.isEmpty ||
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
          return 'Tài khoản không hợp lệ!';
        }
        return null;
      },
    );

Widget password({controller, text, function, boolText, sub}) => TextFormField(
      style: const TextStyle(
        fontSize: 22,
        color: textColor,
      ),
      controller: controller,
      obscureText: boolText,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock_open),
        suffixStyle: const TextStyle(
          color: textColor,
        ),
        suffixIcon: InkWell(
            onTap: function,
            child: Icon(
              sub,
              color: Colors.grey.shade500,
            )),
        errorStyle: const TextStyle(fontSize: 16),
        labelStyle: const TextStyle(
          fontSize: 22,
          color: textColor,
        ),
        labelText: text,
      ),
      validator: (value) {
        if (value == null || value.length < 6) {
          return 'Mật khẩu không được trống, và nhiều hơn 5 kí tự';
        }
        return null;
      },
    );

Widget input({controller, icon, text}) => TextFormField(
      style: const TextStyle(
        fontSize: 22,
        color: Colors.red,
      ),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: icon,
        suffixStyle: const TextStyle(
          color: textColor,
        ),
        errorStyle: const TextStyle(fontSize: 18),
        hintText: text,
        hintStyle: const TextStyle(
          fontSize: 22.0,
          color: textColor,
        ),
      ),
      validator: (value) {
        if (value == null) {
          return 'Không được hợp lệs';
        }
        return null;
      },
    );

Widget button({text, h, w, icon, radius, backgroundColor}) => Container(
      decoration: BoxDecoration(
          color: (backgroundColor == null) ? buttonColor : backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius.toDouble()))),
      height: h.toDouble(),
      width: w.toDouble(),
      child: Center(
        child: (text == null)
            ? icon
            : Text(
                text,
                style: const TextStyle(
                  fontSize: 22.0,
                  color: textColor,
                ),
              ),
      ),
    );
Widget textButton({text, press}) => TextButton(
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          color: textColor,
        ),
      ),
    );

Widget buildListTile({img, titles, datevaview, sup, press}) => InkWell(
      onTap: press,
      child: ListTile(
        leading: Image.asset(
          img,
          width: 75,
          fit: BoxFit.cover,
          height: 100,
        ),
        title: Text(
          titles,
          style: const TextStyle(color: Colors.blue),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(datevaview),
            Text(
              sup,
              style: const TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.black),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "Xem chi tiết ...",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );

// Widget listTileCategory(title, {press}) => Container(
//     color: const Color(0xFF1FB841),
//     height: 50,
//     width: double.infinity,
//     child: ListTile(
//       leading: InkWell(
//         onTap: press,
//         child: Image.asset(
//           "assets/images/icons/danhmuc.png",
//         ),
//       ),
//       title: Center(
//           child: Text(
//         title,
//         style: const TextStyle(fontSize: 25),
//       )),
//       trailing: const Icon(Icons.search),
//     ));

Widget categoryDetail(title) => Container(
      color: const Color(0xFF1FB841),
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset(
              "assets/images/icons/danhmuc.png",
              height: 50,
            ),
          ),
          Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 25),
            ),
          ),
          const Icon(Icons.search),
        ],
      ),
    );

Widget text(content) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            content,
            style: const TextStyle(fontSize: 15, letterSpacing: 0.5),
          ),
          const SizedBox(
            height: 6,
          )
        ],
      ),
    );
