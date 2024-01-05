import 'package:flutter/material.dart';
import 'package:team_between_leaf/join_membership/join_membership_detail/jmd_membership_button.dart';
import 'package:team_between_leaf/join_membership/join_membership_detail/jmd_required_information.dart';
import 'package:team_between_leaf/join_membership/join_membership_detail/jmd_selection_information.dart';

class JoinMembershipPage extends StatefulWidget {
  const JoinMembershipPage({super.key});

  @override
  State<JoinMembershipPage> createState() => _JoinMembershipPageState();
}

class _JoinMembershipPageState extends State<JoinMembershipPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RequiredInformation(), //  필수 정보 (이메일 주소, 비밀번호, 이름, 휴대폰 번호)
              SelectionInformation(), // 선택 정보 (주소, 생년월일)
              JoinMembershipButton(), // 회원가입 버튼
            ],
          ),
        ),
      ),
    );
  }
}
