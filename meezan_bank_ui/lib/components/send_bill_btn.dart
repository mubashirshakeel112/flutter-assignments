import 'package:flutter/material.dart';

class SendBillBtn extends StatelessWidget {
  final String text;
  final String image;
  final GestureTapCallback? onPress;
  const SendBillBtn({
    super.key,
    required this.text,
    required this.image,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF000000).withAlpha(12),
                blurRadius: 4,
                spreadRadius: 0,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 38, right: 38),
          child: Column(
            children: [
              Container(
                width: 66,
                height: 66,
                padding: EdgeInsets.only(
                  top: 19,
                  bottom: 19,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFDFD3E7).withAlpha(50),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(image),
              ),
              SizedBox(height: 12),
              Text(
                text,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Color(0xFF262626)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
