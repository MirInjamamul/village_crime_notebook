class Ward {
  final int id;
  final String name;
  final String location;

  Ward({
    required this.id,
    required this.name,
    required this.location,
  });
}

class Thana {
  final int id;
  final String name;
  final String location;
  final List<Ward> wards;

  Thana({
    required this.id,
    required this.name,
    required this.location,
    required this.wards,
  });
}
