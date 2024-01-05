import 'package:flutter/material.dart';

class JoinMembershipButton extends StatelessWidget {
  const JoinMembershipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        minimumSize: const Size(double.infinity, 64), // 버튼의 최소 사이즈를 지정합니다.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // 버튼의 둥근 모서리를 지정합니다.
          side: const BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      onPressed: () {
        // 버튼 탭 시 실행할 코드
      },
      child: const Text('회원가입', style: TextStyle(color: Colors.black)),
    );
  }
}
