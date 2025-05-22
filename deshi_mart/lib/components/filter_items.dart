import 'package:flutter/material.dart';

class FilterItems extends StatefulWidget {
  final String? text;
  const FilterItems({super.key, required this.text});

  @override
  State<FilterItems> createState() => _FilterItemsState();
}

class _FilterItemsState extends State<FilterItems> {
  bool isChanged = false;
  Color textColor = Color(0xFF181725);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              activeColor: Color(0xFF53B175),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              value: isChanged,
              side: BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
              onChanged: (value) {
                setState(() {
                  isChanged = value!;
                  if (textColor != Color(0xFF53B175)) {
                    textColor = Color(0xFF53B175);
                  } else {
                    textColor = Color(0xFF181725);
                  }
                });
              },
            ),
          ),
          SizedBox(width: 10),
          Text(
            widget.text ?? "",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
