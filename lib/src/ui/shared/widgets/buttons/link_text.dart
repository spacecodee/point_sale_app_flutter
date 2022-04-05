import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:point_sale_app/src/utils/app_colors.dart';

class LinkText extends StatefulWidget {
  final Color color;
  final String text;
  final Function? onPressed;

  const LinkText(
      {Key? key, required this.text, this.onPressed, this.color = AppColors.textColor3})
      : super(key: key);

  @override
  _LinkTextState createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onPressed != null) widget.onPressed!();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: widget.color,
              decoration:
                  isHover ? TextDecoration.underline : TextDecoration.none,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
