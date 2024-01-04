import 'package:flutter/material.dart';
import 'package:team_between_leaf/text_widgets.dart';

class RequiredInformation extends StatelessWidget {
  const RequiredInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: email(),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '이메일 주소',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: password(),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '비밀번호'),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '비밀번호 확인'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: passwordValidationNotice(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: name(),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '이름을 입력하세요'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: phoneNumner(),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "'-' 구분없이 입력"),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '인증번호 입력'),
            
          ),
        ]
      ),
    );
  }
}
