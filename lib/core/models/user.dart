class User {
  const User({
    required this.id,
    this.email,
    this.name,
  });

  factory User.empty() => const User(id: '');

  final String id;

  final String? name;

  final String? email;
}
