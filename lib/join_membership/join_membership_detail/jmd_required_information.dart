import 'package:flutter/material.dart';
import 'package:team_between_leaf/core_services/text_widgets.dart';

class RequiredInformation extends StatefulWidget {
  const RequiredInformation({
    super.key,
  });

  @override
  State<RequiredInformation> createState() => _RequiredInformationState();
}

class _RequiredInformationState extends State<RequiredInformation> {
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _passwordcheckFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _authnumberFocusNode = FocusNode();

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    _passwordcheckFocusNode.dispose();
    _nameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _authnumberFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          email(),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: '이메일 주소'),
            keyboardType: TextInputType.emailAddress, // 키보드 타입 지정
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(_passwordFocusNode);
            },
          ),
          const SizedBox(height: 30),
          password(),
          TextFormField(
            focusNode: _passwordFocusNode,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: '비밀번호'),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (value) =>
                FocusScope.of(context).requestFocus(_passwordcheckFocusNode),
          ),
          const SizedBox(height: 10),
          TextFormField(
            focusNode: _passwordcheckFocusNode,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: '비밀번호 확인'),
            onFieldSubmitted: (value) =>
                FocusScope.of(context).requestFocus(_nameFocusNode),
          ),
          const SizedBox(height: 3),
          passwordValidationNotice(),
          const SizedBox(height: 3),
          name(),
          TextFormField(
            focusNode: _nameFocusNode,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: '이름을 입력하세요'),
            onFieldSubmitted: (value) =>
                FocusScope.of(context).requestFocus(_phoneFocusNode),
          ),
          const SizedBox(height: 30),
          phoneNumner(),
          TextFormField(
            focusNode: _phoneFocusNode,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "'-' 구분없이 입력"),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            onFieldSubmitted: (value) =>
                FocusScope.of(context).requestFocus(_phoneFocusNode),
          ),
          const SizedBox(height: 10),
          TextFormField(
            focusNode: _authnumberFocusNode,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: '인증번호 입력'),
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
          ),
        ],
      ),
    );
  }
}
