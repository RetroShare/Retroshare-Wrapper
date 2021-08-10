part of rsModels;

class ChatIdType {
  /// The underlying value of this enum member.
  final int value;

  const ChatIdType._internal(this.value);

  static const ChatIdType number0_ = ChatIdType._internal(0);
  static const ChatIdType number1_ = ChatIdType._internal(1);
  static const ChatIdType number2_ = ChatIdType._internal(2);
  static const ChatIdType number3_ = ChatIdType._internal(3);
  static const ChatIdType number4_ = ChatIdType._internal(4);

  int toJson() {
    return value;
  }

  static ChatIdType fromJson(int value) {
    return ChatIdTypeTypeTransformer().decode(value);
  }

  static List<ChatIdType> listFromJson(List<dynamic> json) {
    return json == null
        ? <ChatIdType>[]
        : json.map((value) => ChatIdType.fromJson(value)).toList();
  }
}

class ChatIdTypeTypeTransformer {
  dynamic encode(ChatIdType data) {
    return data.value;
  }

  ChatIdType decode(dynamic data) {
    switch (data) {
      case 0:
        return ChatIdType.number0_;
      case 1:
        return ChatIdType.number1_;
      case 2:
        return ChatIdType.number2_;
      case 3:
        return ChatIdType.number3_;
      case 4:
        return ChatIdType.number4_;
      default:
        throw ('Unknown enum value to decode: $data');
    }
  }
}
