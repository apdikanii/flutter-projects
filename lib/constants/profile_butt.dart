import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileButtom extends StatefulWidget {
  const ProfileButtom({super.key});

  @override
  State<ProfileButtom> createState() => _ProfileButtomState();
}

class _ProfileButtomState extends State<ProfileButtom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Row(
          children: [
            Text(text),
            Icon(Icons.forward)
          ],
        ),
      ),
    );
  }
}