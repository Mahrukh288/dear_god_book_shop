import 'package:flutter/material.dart';

class TileDes extends StatelessWidget {
  TileDes(
      {Key? key, required this.icon, required this.text, required this.isHome})
      : super(key: key);
  final bool isHome;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('Hi');
      },
      child: Flex(
        direction: isHome ? Axis.vertical : Axis.horizontal,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(width: 20),
          Text(text,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: isHome ? 16 : 20,
                  fontWeight: isHome ? FontWeight.w400 : FontWeight.w600))
        ],
      ),
    );
  }
}
