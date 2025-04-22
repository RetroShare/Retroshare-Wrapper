part of 'chat_id_type.dart';

enum ChatIdType {
  number0(0),
  number1(1),
  number2(2),
  number3(3),
  number4(4);

  const ChatIdType(this.value);
  final int value;

  static ChatIdType fromValue(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw ArgumentError('Unknown enum value: $value'),
    );
  }

  static ChatIdType fromJson(dynamic json) => fromValue(json as int);
  int toJson() => value;

  static List<ChatIdType> listFromJson(List<dynamic> jsonList) {
    return jsonList.map(fromJson).toList();
  }
}
