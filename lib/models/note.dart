class Note {
  int _id;
  String _date;
  String _title;
  String _description;
  int _priority;

  Note(this._title, this._date, this._priority, [this._description]);

  Note.with_id(this._id, this._title, this._date, this._priority,
      [this._description]);

  int get id => _id;
  String get title => _title;
  String get date => _date;
  String get description => _description;
  int get priority => _priority;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['date'] = _date;
    map['priority'] = _priority;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._date = map['date'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
  }
}
