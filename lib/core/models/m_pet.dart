class MPet {
  final String id;
  final String? name;
  final String? breed;
  final String? location;
  final String? description;
  bool isFav;

  MPet({
    required this.id,
    this.name,
    this.breed,
    this.location,
    this.description,
    this.isFav = false,
  });
}
