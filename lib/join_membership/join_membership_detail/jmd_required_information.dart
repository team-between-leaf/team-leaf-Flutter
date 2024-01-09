import 'package:flutter/material.dart';
import 'package:team_between_leaf/core_services/text_widgets.dart';
import 'package:team_between_leaf/core_services/verify_form.dart';

class RequiredInformation extends StatefulWidget {
  const RequiredInformation({
    super.key,
  });

  @override
  State<RequiredInformation> createState() => _RequiredInformationState();
}

class _RequiredInformationState extends State<RequiredInformation> {
  final FocusNode _passwordFocusNode = FocusNode(); // 비밀번호로 이동
  final FocusNode _passwordcheckFocusNode = FocusNode(); // 비밀번호 확인으로 이동
  final FocusNode _nameFocusNode = FocusNode(); // 이름으로 이동
  final FocusNode _phoneFocusNode = FocusNode(); // 핸드폰 번호로 이동
  final _formKey = GlobalKey<FormState>(); // 폼 키 추가
  final FocusNode _emailcheck = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailcheck.addListener(() {
      if (!_emailcheck.hasFocus) {
        // 이메일 필드에서 포커스가 벗어났을 때 유효성 검사를 수행
        _formKey.currentState?.validate();
      }
    });
  }

  @override
  void dispose() {
    // 초기화
    _passwordFocusNode.dispose();
    _passwordcheckFocusNode.dispose();
    _nameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _emailcheck.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Form(
        key: _formKey, // 폼 키 할당
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            email(),
            TextFormField(
              focusNode: _emailcheck,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: '이메일 주소'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '이메일 주소를 입력해주세요.';
                } else if (!emailRegExp.hasMatch(value)) {
                  return '유효한 이메일 주소가 아닙니다.';
                }
                return null; // 입력이 유효할 경우 null 반환
              },
              onFieldSubmitted: (value) {
                // 유효성 검사 수행
                if (_formKey.currentState!.validate()) {
                  // 유효하면 다음 필드로 포커스 이동
                  FocusScope.of(context).requestFocus(_passwordFocusNode);
                }
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
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: '인증번호 입력'),
              keyboardType: TextInputType.phone,
            ),
          ],
        ),
      ),
    );
  }
}
