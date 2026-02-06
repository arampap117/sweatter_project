import 'package:sweatter_server/features/auth/data/db/user_database.dart';
import 'package:sweatter_server/features/auth/domain/repositories/i_user_repository.dart';

final class UserRepositoryImpl implements IUserRepository {
  const UserRepositoryImpl({required this.database});
  final UserDatabase database;

  @override
  Future<void> createUser({
    required final String email,
    required final String name,
    required final String passwordHash,
  }) async {
    database.into().insert(entity);
  }
}
