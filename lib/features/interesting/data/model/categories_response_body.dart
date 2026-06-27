class CategoryResponseBody {
  CategoryResponseBody({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  factory CategoryResponseBody.fromJson(Map<String, dynamic> json) {
    return CategoryResponseBody(
      id: json['id'],
      name: json['name'],
    );
  }

  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }
}