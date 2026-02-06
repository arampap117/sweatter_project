import 'package:drift/drift.dart';
import 'package:sweatter_server/features/auth/data/db/user_database.dart';
import 'package:sweatter_server/features/auth/domain/repositories/i_user_repository.dart';

final class UserRepositoryImpl implements IUserRepository {
  const UserRepositoryImpl({required this.db});
  final UserDatabase db;

  @override
  Future<void> createUser({
    required final String email,
    required final String name,
    required final String passwordHash,
  }) async => await db
      .into(db.userTable)
      .insert(
        UserTableCompanion(
          name: Value(name),
          email: Value(email),
          passwordHash: Value(passwordHash),
        ),
      );
}
