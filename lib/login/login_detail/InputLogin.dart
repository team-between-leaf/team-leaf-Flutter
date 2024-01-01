import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_between_leaf/login/login_detail/CheckBox.dart';

class inputLogin extends StatelessWidget {
  const inputLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const CheckBox(), // 체크박스
      ],
    );
  }
}
