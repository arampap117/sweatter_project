import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:sweatter_server/features/auth/domain/entities/user_entiti.dart';
import 'package:sweatter_server/features/auth/domain/services/auth_service.dart';

class AuthHandler {
  const AuthHandler({required this.service});
  final AuthService service;

  Future<Response> register(final Request req) async {
    final String reqData = await req.readAsString();
    final Map<String, dynamic> data =
        jsonDecode(reqData) as Map<String, dynamic>;

    try {
      await service.register(
        email: data['email'],
        name: data['name'],
        password: data['password'],
      );
      return Response.ok(
        jsonEncode({'message': 'User created'}),
        headers: {'content-type': 'application/json'},
      );
    } catch (exception) {
      return Response.badRequest(
        body: jsonEncode({'error': exception.toString()}),
        headers: {'content-type': 'application/json'},
      );
    }
  }

  Future<Response> login(final Request req) async {
    final String reqData = await req.readAsString();
    final Map<String, dynamic> data =
        jsonDecode(reqData) as Map<String, dynamic>;

    try {
      final User user = await service.login(
        email: data['email'],
        password: data[' password'],
      );
      return Response.ok(
        jsonEncode({'id': user.id, 'name': user.name, 'email': user.email}),
      );
    } catch (exception) {
      return Response.unauthorized(
        jsonEncode({'message': exception.toString()}),
      );
    }
  }
}
