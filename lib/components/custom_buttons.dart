import 'package:flutter/material.dart';
import 'package:hamro_vidyalaya/constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        padding: const EdgeInsets.only(right: kDefaultPadding),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [kPrimaryColor, kSecondaryColor],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            borderRadius: BorderRadius.circular(kDefaultPadding)),
        child: Row(children: [
          const Spacer(),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w500, fontSize: 16.0),
          ),
          const Spacer(),
          Icon(iconData, size: 30.0, color: kOtherColor),
        ]),
      ),
    );
  }
}
