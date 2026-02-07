import 'package:bcrypt/bcrypt.dart';
import 'package:sweatter_server/features/auth/domain/entities/user_entiti.dart';
import 'package:sweatter_server/features/auth/domain/repositories/i_user_repository.dart';

final class AuthService {
  const AuthService({required this.userRepository});

  final IUserRepository userRepository;

  Future<void> register({
    required final String email,
    required final String name,
    required final String password,
  }) async {
    final User? user = await userRepository.findUserByEmail(email: email);

    if (user != null) throw Exception('Такой пользователь есть');

    final String passwordHash = _hashPassword(password);

    await userRepository.createUser(
      email: email,
      name: name,
      passwordHash: passwordHash,
    );
  }

  Future<User> login({
    required final String email,
    required final String password,
  }) async {
    final User? user = await userRepository.findUserByEmail(email: email);

    if (user == null) throw Exception('Такого пользователя нет');

    final bool isValid = _chekPassword(password, user.passwordHash);

    if (!isValid) throw Exception('Неверный пароль');

    return user;
  }

  String _hashPassword(final String password) =>
      BCrypt.hashpw(password, BCrypt.gensalt());

  bool _chekPassword(final String password, final String passwordHash) =>
      BCrypt.checkpw(password, passwordHash);
}
