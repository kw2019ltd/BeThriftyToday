import 'package:bethriftytoday/config/config.dart';
import 'package:flutter/material.dart';

class TransactionTypeSelector extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onPressed;

  const TransactionTypeSelector({
    Key key,
    @required this.title,
    this.isSelected = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: this.onPressed,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: isSelected ? thriftyBlue : Colors.transparent,
            border: Border.all(
              width: 2,
              color: thriftyBlue,
            ),
          ),
          child: Center(
            child: Text(
              this.title.toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                color: isSelected ? Colors.white : thriftyBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
