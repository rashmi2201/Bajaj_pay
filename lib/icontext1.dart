import 'package:flutter/material.dart';

class IconText1 extends StatefulWidget {
  final IconData? mIcon;
  final String? mName;
  final void Function()? mOnTap;
  const IconText1({super.key, required this.mIcon, required this.mName,required this.mOnTap});

  @override
  State<StatefulWidget> createState() => _IconText1State();
}

class _IconText1State extends State<IconText1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.mOnTap,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(child: Icon(widget.mIcon, color: Color.fromARGB(250, 149, 219, 231), size: 50)),
              Text(widget.mName ?? 'NA',
                  style: const TextStyle(color: Colors.black, fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}