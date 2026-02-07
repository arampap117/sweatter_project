final class User {
  const User({
    required this.id,
    required this.email,
    required this.name,
    required this.createdAt,
    required this.passwordHash,
  });
  final int id;
  final String email;
  final String name;
  final String passwordHash;
  final DateTime createdAt;
}
