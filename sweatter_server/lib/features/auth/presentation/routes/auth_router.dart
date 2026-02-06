import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

final class AuthRouter {
  static Handler get create =>
      (Router()
            ..post('/login', () {})
            ..post('/register', () {})
            ..get('/me', () {}))
          .call;
}
