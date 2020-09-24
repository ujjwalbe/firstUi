import 'package:flutter/material.dart';
import 'textfield_container.dart';
import 'package:firstUi/constant.dart';

class PasswordInput extends StatefulWidget {
  PasswordInput({Key key, this.onChanged, this.onSaved}) : super(key: key);
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSaved;

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: visible,
        onChanged: widget.onChanged,
        onSaved: widget.onSaved,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              size: 25.0,
              color: kPrimaryColor,
            ),
            hintText: "Password",
            
            border: InputBorder.none,
            suffixIcon: IconButton(
              splashRadius: 1.0,
              icon: Icon(visible ? Icons.visibility_off : Icons.visibility,
                  color: kPrimaryColor.withOpacity(0.7)),
              onPressed: () {
                setState(() {
                  visible = !visible;
                });
              },
            )),
      ),
    );
  }
}
