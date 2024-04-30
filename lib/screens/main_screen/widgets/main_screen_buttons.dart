import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class AssetsButton extends StatelessWidget {
  const AssetsButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceSize(context).height * 0.1,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: VarlikYonetimiColors().goldColors,
      ),
      child: Align(
        alignment: Alignment.center,
        child: ListTile(
          leading: Icon(
            icon,
            size: 30,
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text("\$100,000,000,21",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontFamily: "Lato")),
              ),
              IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 30,
                ),
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
