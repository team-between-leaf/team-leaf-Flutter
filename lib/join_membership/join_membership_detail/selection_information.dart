import 'package:flutter/material.dart';
import 'package:team_between_leaf/core_services/text_widgets.dart';

class SelectionInformation extends StatelessWidget {
  const SelectionInformation({
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
          address(), // 주소
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '주소',
            ),
          ),
          const SizedBox(height: 10), // 두 TextField 사이의 간격
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '상세 주소입력',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          birth(), // 생년월일
          const TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: '생년월일'),
          )
        ],
      ),
    );
  }
}
