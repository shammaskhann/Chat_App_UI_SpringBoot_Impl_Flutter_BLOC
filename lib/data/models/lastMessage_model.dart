class LastMessageInfo {
  final String message;
  final String senderId;
  final DateTime timestamp;
  final bool unread;

  LastMessageInfo({
    required this.message,
    required this.senderId,
    required this.timestamp,
    required this.unread,
  });

  factory LastMessageInfo.fromJson(Map<String, dynamic> json) {
    return LastMessageInfo(
      message: json['message'],
      senderId: json['senderId'],
      timestamp: DateTime.parse(json['timestamp']),
      unread: json['unread'],
    );
  }
}
