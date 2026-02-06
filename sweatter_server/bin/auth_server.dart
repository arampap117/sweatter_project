import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:sweatter_server/core/pipeline/pipeline.dart';
import 'package:sweatter_server/core/server/server.dart';
import 'package:sweatter_server/features/auth/presentation/routes/auth_router.dart';

void main() async {
  GetIt.instance;
  await ShelfServer(
    handler: buildPipeline().addHandler(AuthRouter.create),
    port: 8081,
    address: InternetAddress.anyIPv4,
  ).start();
}
