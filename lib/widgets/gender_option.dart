import 'package:flutter/material.dart';

Widget genderOption(String title, ValueNotifier<bool> selected, ValueNotifier<bool> other) {
  return ValueListenableBuilder<bool>(
    valueListenable: selected,
    builder: (context, value, child) {
      return GestureDetector(
        onTap: () {
          selected.value = true;
          other.value = false;
        },
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey,width: 1,
                style: BorderStyle.solid,),
          ),
          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 22),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: TextStyle(fontSize: 16)),
                SizedBox(width: 5),
                Checkbox(
                  value: value,
                  activeColor: Colors.orange,
                  onChanged: (newValue) {
                    selected.value = true;
                    other.value = false;
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}