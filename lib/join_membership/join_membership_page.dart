import 'package:flutter/material.dart';
import 'package:team_between_leaf/join_membership/join_membership_detail/selection_information.dart';
import 'package:team_between_leaf/text_widgets.dart';

class JoinMembershipPage extends StatefulWidget {
  const JoinMembershipPage({super.key});

  @override
  State<JoinMembershipPage> createState() => _JoinMembershipPageState();
}

class _JoinMembershipPageState extends State<JoinMembershipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80),
              ),
              email(),
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
              const Padding(padding: EdgeInsets.only(top: 10)),
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
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: '인증번호 입력'),
                ),
              ),
              const SelectionInformation(), // 선택 정보 ( 주소, 생년월일)
            ],
          ),
        ),
      ),
    );
  }
}
