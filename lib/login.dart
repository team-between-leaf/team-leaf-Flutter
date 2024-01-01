import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    // ---------- 체크 박스 만들기 끝 ------------
                    // 로그인 버튼
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        minimumSize:
                            Size(double.infinity, 64), // 버튼의 최소 사이즈를 지정합니다.
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(50), // 버튼의 둥근 모서리를 지정합니다.
                          side: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      onPressed: () {
                        // 버튼 탭 시 실행할 코드
                      },
                      child:
                          Text(' 로그인', style: TextStyle(color: Colors.black)),
                    ),

                    // 로그인 버튼 끝
                    // 아이디 비번 회원가입 텍스트

                    Row(
                      // 이거 채현개발자님이 중앙이 아닌것 같다고 해서 주석 처리 합니다.
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: () => 1, child: Text('아이디 찾기')),
                        SizedBox(
                          height: 20, // VerticalDivider의 높이를 지정
                          child: VerticalDivider(
                            color: Colors.black, // 구분선 색상
                            thickness: 1, // 구분선 두께
                          ),
                        ),
                        TextButton(onPressed: () => 1, child: Text('비밀번호 찾기')),
                        SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        TextButton(onPressed: () => 1, child: Text('회원가입')),
                      ],
                    ),
                    // 여기까지 //
                    Padding(padding: EdgeInsets.only(top: 70)),
                    Row(
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
                    Padding(padding: EdgeInsets.only(top: 10)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => 1,
                          child: CircleAvatar(radius: 21),
                        ),
                        TextButton(
                          onPressed: () => 1,
                          child: CircleAvatar(radius: 21),
                        ),
                        TextButton(
                          onPressed: () => 1,
                          child: CircleAvatar(radius: 21),
                        ),
                        TextButton(
                          onPressed: () => 1,
                          child: CircleAvatar(radius: 21),
                        ),
                        TextButton(
                          onPressed: () => 1,
                          child: CircleAvatar(radius: 21),
                        ),
                      ],
                    ),
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
