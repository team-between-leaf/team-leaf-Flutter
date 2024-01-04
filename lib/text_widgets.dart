import 'package:flutter/material.dart';

Widget email() {
  return const Text(
    '이메일 주소 *',
    style: TextStyle(
      fontSize: 16,
    ),
    textAlign: TextAlign.left,
  );
}

Widget password() {
  return const Text(
    '비밀번호 *',
    style: TextStyle(fontSize: 16),
  );
}

Widget passwordValidationNotice() {
  return const Text(
    '영문 대문자와 소문자, 숫자, 특수문자 중 2가지 이상을 조합하여 6~20자로 입력해주세요.',
    style: TextStyle(
      color: Colors.red,
    ),
  );
}

Widget name() {
  return const Text(
    '이름*',
    style: TextStyle(fontSize: 16),
  );
}

Widget phoneNumner() {
  return const Text(
    '휴대폰 번호*',
    style: TextStyle(fontSize: 16),
  );
}

Widget address() {
  return const Text(
    '주소',
    style: TextStyle(fontSize: 16),
  );
}

Widget birth() {
  return const Text(
    '생년월일',
    style: TextStyle(fontSize: 16),
  );
}
