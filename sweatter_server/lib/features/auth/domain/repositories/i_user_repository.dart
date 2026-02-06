abstract interface class IUserRepository {
  Future<void> createUser({
    required final String email,
    required final String name,
    required final String passwordHash,
  });
}
