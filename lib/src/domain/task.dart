class Task {
  final int _id;

  int get id => _id;

  final String _title;

  String get title => _title;

  final String _description;

  String get description => _description;

  Task({int id, String title, String description})
      : _id = id,
        _title = title,
        _description = description;
}
