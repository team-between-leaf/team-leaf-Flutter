import 'package:flutter/material.dart';
import 'package:team_between_leaf/login/login_detail/InputLogin.dart';
import 'package:team_between_leaf/login/login_detail/SocialLoginWidget.dart';
import 'package:team_between_leaf/login/login_detail/UserAuthControls.dart';

class loginDart extends StatefulWidget {
  const loginDart({
    super.key,
  });

  @override
  State<loginDart> createState() => _loginDartState();
}

class _loginDartState extends State<loginDart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/test_img.jpg', // 배경화면 이미지 입니다.
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("LOGO있는 자리"),
              const Text('로고 밑에 텍스트'),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: inputLogin(),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: const UserAuthControls(), // 로그인, 아이디비번 찾기, 회원가입
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: SocialLoginWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
