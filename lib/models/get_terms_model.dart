class GetTerms {
  String? title;
  String? content;

  GetTerms({this.title, this.content});

  GetTerms.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    return data;
  }
}
