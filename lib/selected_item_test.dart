import 'package:flutter/material.dart';

class SelectedItemTest extends StatelessWidget {
  String variant;
  VoidCallback ontap;
  bool isSelected;

  SelectedItemTest({
    super.key,
    required this.variant,
    required this.ontap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected
              ? Colors.green.withOpacity(.1)
              : Colors.white.withOpacity(0.4),
          border: Border.all(
            width: 2,
            color: isSelected ? Colors.green.shade700 : Colors.grey.shade300,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              size: 30,
              color: isSelected ? Colors.green.shade700 : Colors.grey,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Text(
                variant,
                style: TextStyle(
                  color: isSelected ? Colors.green.shade700 : Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
