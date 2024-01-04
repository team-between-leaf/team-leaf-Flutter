import 'package:flutter/material.dart';
import 'package:team_between_leaf/core_services/text_widgets.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              flex: 1,
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            sns(),
            const Flexible(
              flex: 1,
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(
                radius: 21,
                backgroundColor: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(
                radius: 21,
                backgroundColor: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(
                radius: 21,
                backgroundColor: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(
                radius: 21,
                backgroundColor: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(
                radius: 21,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
