import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:sweatter_server/features/auth/presentation/handlers/auth_handlers.dart';

final class AuthRouter {
  const AuthRouter({required this.handler});
  final AuthHandler handler;

  Handler get create =>
      (Router()
            ..post('/login', handler.login)
            ..post('/register', handler.register))
          .call;
}
