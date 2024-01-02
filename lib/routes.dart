// 라우터를 담당하는 .dart 파일입니다.

import 'package:flutter/material.dart';
import 'package:team_between_leaf/join_membership/join_membership_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/JoinMembershipPage': (context) => const JoinMembershipPage(),
  // 다른 라우트들을 추가하면 되용
};
