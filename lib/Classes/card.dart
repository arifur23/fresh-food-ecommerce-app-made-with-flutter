const String tableCard = 'cards';

class CardFields {
  static final List<String> values = [
    /// Add all fields
    id, cardName, cardNumber, expireDate, securityCode, createdTime
  ];

  static const String id = '_id';
  static const String cardName = 'cardName';
  static const String cardNumber = 'cardNumber';
  static const String expireDate = 'expireDate';
  static const String securityCode = 'securityCode';
  static const String createdTime = 'createdTime';
}

class Card {
   final int? id;
   final String cardName;
   final int cardNumber;
   final DateTime expireDate;
   final int securityCode;
   final DateTime createdTime;

   Card({
    required this.id,
    required this.cardName,
    required this.cardNumber,
    required this.expireDate,
    required this.securityCode,
    required this.createdTime
  });

  Card copy({
    int? id,
    String? cardName,
    int? cardNumber,
    DateTime? expireDate,
    int? securityCode,
    DateTime? createdTime,
  }) =>
      Card(
          id: id ?? this.id,
          cardName: cardName ?? this.cardName,
          cardNumber: cardNumber ?? this.cardNumber,
          expireDate: expireDate ?? this.expireDate,
          securityCode: securityCode ?? this.securityCode,
          createdTime: createdTime ?? this.createdTime,
      );

  static Card fromJson(Map<String, Object?> json) => Card(
    id: json[CardFields.id] as int,
    cardName: json[CardFields.cardName] as String,
    cardNumber: json[CardFields.cardNumber] as int,
    expireDate: json[CardFields.expireDate] as DateTime,
    securityCode: json[CardFields.securityCode] as int,
    createdTime: json[CardFields.createdTime] as DateTime
  );

  Map<String, Object?> toJson() => {
    CardFields.id: id,
    CardFields.cardName: cardName,
    CardFields.cardNumber: cardNumber,
    CardFields.expireDate: expireDate,
    CardFields.securityCode: securityCode,
    CardFields.createdTime: createdTime.toIso8601String(),
  };
}