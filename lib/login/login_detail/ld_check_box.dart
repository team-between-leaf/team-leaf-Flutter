import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? _isAutoLogin = true;
  bool? _isSaveId = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // 아이디 저장 체크박스
            Checkbox(
              value: _isSaveId,
              onChanged: (bool? checkbox) {
                setState(() {
                  _isSaveId = checkbox;
                });
              },
            ),
            const Text('아이디 저장'),
            const SizedBox(width: 22), // 체크박스 사이의 간격

            // 자동 로그인 체크박스
            Checkbox(
              value: _isAutoLogin,
              onChanged: (bool? autologin) {
                setState(() {
                  _isAutoLogin = autologin;
                });
              },
            ),
            const Text('자동 로그인'),
          ],
        ),
      ],
    );
  }
}
