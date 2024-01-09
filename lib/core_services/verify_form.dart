// 유효성 검증 관련 로직

RegExp emailRegExp = RegExp(
  r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  caseSensitive: false,
  multiLine: false,
);


RegExp passwordRegExp = RegExp(
  r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%#?&])[A-Za-z\d@$!%*#?&]{8,21}$',
  caseSensitive: true, // 대문자 판별 필요
  multiLine: false,
);

