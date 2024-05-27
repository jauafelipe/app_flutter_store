class ApiModel {
  final int id;
  final String title;
  final String body;

  const ApiModel({required this.id, required this.title, required this.body});

  factory ApiModel.fromJson(Map<String, dynamic> json) =>
      ApiModel(id: json['id'], body: json['body'], title: json['title']);
}
