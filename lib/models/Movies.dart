class Movies {
  String _title;
  String _description;
  String _image;

  Movies(this._title, this._description, this._image);

  String get title => _title;
  set title(String title) {
    _title = title;
  }

  String get description => _description;
  set description(String descriptionn) {
    _description = description;
  }

  String get image => _image;
  set image(String image) {
    _image = image;
  }
}
