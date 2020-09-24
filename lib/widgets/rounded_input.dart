import 'package:firstUi/constant.dart';
import 'package:flutter/material.dart';
import 'textfield_container.dart';

class RoundedInput extends StatelessWidget {
  RoundedInput({
    Key key,
    this.onChanged,
    this.onSaved
  }) : super(key: key);
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        decoration: InputDecoration(
          icon: Icon(Icons.person, size: 25.0, color: kPrimaryColor,),
          hintText: "Email",
          border: InputBorder.none
        ),

      ),
    );
  }
}
