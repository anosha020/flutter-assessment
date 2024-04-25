import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.text, this.onpressed});
  final text;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 3,
            textStyle: const TextStyle(fontSize: 20),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12.0), // Set the border radius here
            ),
            backgroundColor: Color.fromRGBO(132, 116, 179, 1)),
        onPressed: onpressed,
        child: Text(text),
      ),
    );
  }
}
