import 'package:flutter/material.dart';

const TextStyle headingStyle = TextStyle(
  fontSize: 22,
  color: Colors.black,
);

const TextStyle style14Blue = TextStyle(
  fontSize: 22,
  color: Colors.black,
);

const TextStyle titleStyle = TextStyle(
  fontSize: 22,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

const focusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    width: 2,
    color: Colors.black,
  ),
);

const errorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    width: 2,
    color: Colors.blueGrey,
  ),
);

const enabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    width: 1,
    color: Colors.black,
  ),
);

InputDecoration formDecoration(String labelText, IconData iconData) {
  return InputDecoration(
      errorStyle: const TextStyle(
        fontSize: 10,
      ),
      //counterText: '',
      prefixIcon: Icon(
        iconData,
        color: Colors.blueGrey,
      ),
      errorMaxLines: 3,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.blueGrey),
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      errorBorder: errorBorder,
      focusedErrorBorder: errorBorder);
}

class SizedBoxH10 extends StatelessWidget {
  const SizedBoxH10({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class SizedBoxH20 extends StatelessWidget {
  const SizedBoxH20({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class SizedBoxH30 extends StatelessWidget {
  const SizedBoxH30({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}

// month consts
const months = {
  1: {'JAN': 31}, // month No : {month:days in month}
  2: {'FEB': 28},
  3: {'MAR': 31},
  4: {'APR': 30},
  5: {'MAY': 31},
  6: {'JUN': 30},
  7: {'JUL': 31},
  8: {'AUG': 31},
  9: {'SEP': 30},
  10: {'OCT': 31},
  11: {'NOV': 30},
  12: {'DEC': 31}
};
