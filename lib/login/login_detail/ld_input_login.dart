import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_between_leaf/login/login_detail/ld_check_box.dart';

class InputLogIn extends StatefulWidget {
  const InputLogIn({
    super.key,
  });

  @override
  State<InputLogIn> createState() => _InputLogInState();
}

class _InputLogInState extends State<InputLogIn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(CupertinoIcons
                .mail), // 아이콘을 prefixIcon으로 사용-> 아이콘하고 라벨텍스트하고 동시사용 가능!
            labelText: 'E-MAIL', // 텍스트 레이블 사용
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        //사이즈 박스사용

        TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(CupertinoIcons
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
