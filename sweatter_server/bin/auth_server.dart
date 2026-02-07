import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:sweatter_server/core/pipeline/pipeline.dart';
import 'package:sweatter_server/core/server/server.dart';
import 'package:sweatter_server/features/auth/data/db/user_database.dart';
import 'package:sweatter_server/features/auth/data/repositories/user_repository_impl.dart';
import 'package:sweatter_server/features/auth/domain/services/auth_service.dart';
import 'package:sweatter_server/features/auth/presentation/handlers/auth_handlers.dart';
import 'package:sweatter_server/features/auth/presentation/routes/auth_router.dart';

void main() async {
  GetIt.instance;
  await ShelfServer(
    handler: buildPipeline().addHandler(
      AuthRouter(
        handler: AuthHandler(
          service: AuthService(
            userRepository: UserRepositoryImpl(db: UserDatabase()),
          ),
        ),
      ).create,
    ),
    port: 8081,
    address: InternetAddress.anyIPv4,
  ).start();
}
