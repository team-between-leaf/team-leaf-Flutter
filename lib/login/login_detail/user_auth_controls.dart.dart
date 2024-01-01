import 'package:flutter/material.dart';

class UserAuthControls extends StatelessWidget {
  const UserAuthControls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
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
          child: const Text(' 로그인', style: TextStyle(color: Colors.black)),
        ),
        Row(
          // 이거 채현개발자님이 중앙이 아닌것 같다고 해서 주석 처리 합니다.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () => 1, child: const Text('아이디 찾기')),
            const SizedBox(
              height: 20, // VerticalDivider의 높이를 지정
              child: VerticalDivider(
                color: Colors.black, // 구분선 색상
                thickness: 1, // 구분선 두께
              ),
            ),
            TextButton(onPressed: () => 1, child: const Text('비밀번호 찾기')),
            const SizedBox(
              height: 20,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            TextButton(onPressed: () => 1, child: const Text('회원가입')),
          ],
        ),
      ],
    );
  }
}
