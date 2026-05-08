

class ChatMessageEntity {

  int id;
  String text;
  String ? imageUrl;
  int createdAt;
  Author author;

  ChatMessageEntity({
    required this.id,
    required this.text,
    this.imageUrl,
    required this.createdAt,
    required this.author
    }
  );
  factory ChatMessageEntity.fromJson(Map<String , dynamic> json){
    return ChatMessageEntity(
        id: json["id"],
        text: json["text"],
        createdAt: json["createdAt"],
        imageUrl: json["imageUrl"],
        author: Author.fromJson(json["author"])
    );
  }

}

class Author {
  String userName;

  Author({required this.userName});

  factory Author.fromJson(Map<String, dynamic> json){
    return Author(userName : json["userName"]);
  }
}