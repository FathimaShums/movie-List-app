class Movies {
  final String title;
  final String description;
  final String image;

  Movies(this.title, this.description, this.image);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Movies &&
        other.title == title &&
        other.description == description &&
        other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ description.hashCode ^ image.hashCode;
}
