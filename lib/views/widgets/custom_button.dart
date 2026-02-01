import 'package:flutter/material.dart';
import 'package:notesapp/constants/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.ontap, this.isloading = false});
  void Function()? ontap;
  bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child:
              isloading == true
                  ? CircularProgressIndicator(color: Colors.black)
                  : Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
        ),
      ),
    );
  }
}
