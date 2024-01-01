import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  bool? _isAutoLogin = true;
  bool? _isSaveId = false;

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
        // 위 컨테이너에 배경화면을 지정했지만 scaffold 로 감싸면 흰색 배경화면으로 변경되기 때문에
        // scaffold 배경흰색을 투명하게 변경했습니다.
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("LOGO있는 자리"), // 여기에는 로고 이미지가 들어갑니당
              //로고 이미지와 텍스트 간격을 뛰우고 싶으면 size box위젯을 사용합니다.
              const Text('로고 밑에 텍스트'),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons
                            .mail), // 아이콘을 prefixIcon으로 사용-> 아이콘하고 라벨텍스트하고 동시사용 가능!
                        labelText: 'E-MAIL', // 텍스트 레이블 사용
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    //사이즈 박스사용

                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons
                            .lock), // 아이콘을 prefixIcon으로 사용 -> 아이콘하고 라벨텍스트하고 동시사용 가능!
                        labelText: 'PASSWORD', // 텍스트 레이블 사용
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    // ---------- 체크 박스 만드는 중 ------------
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Theme(
                          data: Theme.of(context).copyWith(
                            visualDensity: VisualDensity(
                              horizontal: -4.0,
                            ),
                          ),
                          child: Checkbox(
                            value: _isSaveId,
                            onChanged: (bool? checkbox) => setState(() {
                              _isSaveId = checkbox;
                            }),
                          ),
                        ),
                        Text('아이디 저장'),

                        SizedBox(width: 22), // 첫 번째와 두 번째 쌍 사이의 간격
                        // 다음 Checkbox 오른쪽 패딩 조절
                        Theme(
                          data: Theme.of(context).copyWith(
                            visualDensity: VisualDensity(
                              horizontal: -4.0,
                            ),
                          ),
                          child: Checkbox(
                            value: _isAutoLogin,
                            onChanged: (bool? autologin) => setState(() {
                              _isAutoLogin = autologin;
                            }),
                          ),
                        ),
                        Text('자동 로그인'),
                      ],
                    ),

                    const Padding(padding: EdgeInsets.only(top: 60)),
                    const UserAuthControls(), // 로그인, 아이디비번 찾기, 회원가입
                    const Padding(padding: EdgeInsets.only(top: 70)),
                    const SocialLoginWidget(), // 소셜 로그인
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
