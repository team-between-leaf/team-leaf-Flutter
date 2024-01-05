// 유효성 검증 관련 로직

RegExp emailRegExp = RegExp(
  r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  caseSensitive: false,
  multiLine: false,
);
