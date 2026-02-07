import 'package:sweatter_server/features/auth/domain/entities/user_entiti.dart';

abstract interface class IUserRepository {
  Future<void> createUser({
    required final String email,
    required final String name,
    required final String passwordHash,
  });

  Future<User?> findUserByEmail({required final String email});
}
