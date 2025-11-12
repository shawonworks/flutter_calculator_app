import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final Color color;
  void Function()? onTap;
  CustomButton({super.key, required this.title, this.color = Colors.grey, required this.onTap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 80,
          width: 80,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.color
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.title, style: TextStyle(fontSize: 20, color: Colors.white),),
            )
          ),
        ),
      ),
    );
  }
}
