class EventDataModel {
  EventDataModel({
    required this.id,
    required this.title,
    required this.body,
    this.isExpanded = false,
  });

  int id;
  String title;
  String body;
  bool isExpanded;
}
