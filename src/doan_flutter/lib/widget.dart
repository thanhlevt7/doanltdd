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

Widget password({controller, text, function}) => TextFormField(
      style: const TextStyle(
        fontSize: 22,
        color: textColor,
      ),
      controller: controller,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock_open),
        suffixStyle: const TextStyle(
          color: textColor,
        ),
        suffixIcon: InkWell(
            onTap: function,
            child: Icon(
              Icons.visibility,
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

Widget iconButton({icon, press}) => IconButton(onPressed: press, icon: icon);

Widget buildText({text, size, color, weight}) => Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );

Widget counter({value, decrement, increment}) => Card(
      elevation: 2.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          sizeBoxWidth,
          sizeBoxWidth,
          InkWell(
            onTap: decrement,
            child: const Icon(
              Icons.remove,
              size: 22.0,
              color: textColor,
            ),
          ),
          sizeBoxWidth,
          sizeBoxWidth,
          buildText(text: value, color: textColor, size: 22.0),
          sizeBoxWidth,
          sizeBoxWidth,
          InkWell(
            onTap: increment,
            child: const Icon(
              Icons.add,
              size: 22.0,
              color: textColor,
            ),
          ),
          sizeBoxWidth,
          sizeBoxWidth,
        ],
      ),
    );

Widget buildListTile({img, titles, datevaview, sup, press}) => ListTile(
      leading: Image.asset(
        img,
        width: 75,
      ),
      title: Text(
        titles,
        style:const TextStyle(color: Colors.blue),
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(datevaview),
          Text(
            sup,
            style:const TextStyle(color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: press,
                child: const Text(
                  "Xem chi tiết ...",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget listTileCategory(title,{press}) => Container(
    color: const Color(0xFF1FB841),
    height: 50,
    width: double.infinity,
    child: ListTile(
      leading: InkWell(
        onTap: press,
        child: Image.asset(
          "assets/images/icons/danhmuc.png",
        ),
      ),
      title: Center(
          child: Text(
        title,
        style: const TextStyle(fontSize: 25),
      )),
      trailing: const Icon(Icons.search),
    ));
