import 'package:flutter/material.dart';
import 'package:team_between_leaf/login/login_detail/input_login.dart';
import 'package:team_between_leaf/login/login_detail/logo_image.dart';
import 'package:team_between_leaf/login/login_detail/social_login_widget.dart';
import 'package:team_between_leaf/login/login_detail/user_auth_controls.dart.dart';

class LogInDart extends StatefulWidget {
  const LogInDart({
    super.key,
  });

  @override
  State<LogInDart> createState() => _LogInDartState();
}

class _LogInDartState extends State<LogInDart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/test_img.jpg', // 배경화면 이미지 입니다.
            ),
            fit: BoxFit.cover),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoImage(),
              Padding(
                padding: EdgeInsets.all(28.0),
                child: InputLogIn(),
              ),
              Padding(
                padding: EdgeInsets.all(28.0),
                child: UserAuthControls(), // 로그인, 아이디비번 찾기, 회원가입
              ),
              Padding(
                padding: EdgeInsets.all(28.0),
                child: SocialLoginWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
