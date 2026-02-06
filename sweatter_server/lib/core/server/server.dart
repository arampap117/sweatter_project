import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

final class ShelfServer {
  const ShelfServer({
    required this.handler,
    required this.port,
    required this.address,
  });
  final Object address;
  final Handler handler;
  final int port;

  Future<void> start() async {
    final HttpServer server = await serve(handler, address, port);
    print('Сервер запущен: http://${server.address.host}:$port');
  }
}
