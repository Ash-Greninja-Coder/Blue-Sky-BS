import 'package:flutter/material.dart';
import 'package:book/models/products.dart';
import '../../../../../constants.dart';

class ColorAndSize extends StatefulWidget {
  const ColorAndSize({super.key, required this.product});

  final Book product;

  @override
  ColorAndSizeState createState() => ColorAndSizeState();
}

class ColorAndSizeState extends State<ColorAndSize> {
  Color selectedColor = const Color(0xFF356C95);

  void changeColor(Color newColor) {
    setState(() {
      selectedColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color:const  Color(0xFF356C95),
                    isSelected: selectedColor ==const  Color(0xFF356C95),
                    onTap: () => changeColor(const Color(0xFF356C95)),
                  ),
                  ColorDot(
                    color: const Color(0xFFF8C078),
                    isSelected: selectedColor == const Color(0xFFF8C078),
                    onTap: () => changeColor(const Color(0xFFF8C078)),
                  ),
                  ColorDot(
                    color: const Color(0xFFA29B9B),
                    isSelected: selectedColor == const Color(0xFFA29B9B),
                    onTap: () => changeColor(const Color(0xFFA29B9B)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${widget.product.size} cm",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color, required this.isSelected, required this.onTap});

  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:const  EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
        padding:const  EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}