class Message {
  final String id, text;
  final User from, to;
  final DateTime sent, read, delivered;

  Message(
      {this.id,
      this.text,
      this.from,
      this.to,
      this.sent,
      this.read,
      this.delivered});
}
