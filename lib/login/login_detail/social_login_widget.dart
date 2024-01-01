import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            Text(
              '  sns로 간편 로그인하기  ',
            ),
            Flexible(
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
              child: const CircleAvatar(radius: 21),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(radius: 21),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(radius: 21),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(radius: 21),
            ),
            TextButton(
              onPressed: () => 1,
              child: const CircleAvatar(radius: 21),
            ),
          ],
        ),
      ],
    );
  }
}
