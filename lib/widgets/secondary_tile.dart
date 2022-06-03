import 'package:cy_assignment/widgets/touchable_opacity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryTile extends StatelessWidget {
  final String label;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final bool restrictLabelOverflow;
  const SecondaryTile({
    Key? key,
    required this.label,
    this.subtitle,
    this.leading,
    this.trailing,
    this.restrictLabelOverflow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {},
      child: ListTile(
        leading: leading,
        contentPadding: EdgeInsets.zero,
        title: Text(
          label,
          overflow: restrictLabelOverflow ? TextOverflow.ellipsis : null,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            : null,
        trailing: trailing,
      ),
    );
  }
}
