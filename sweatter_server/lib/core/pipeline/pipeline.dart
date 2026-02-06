import 'package:shelf/shelf.dart';
import 'package:sweatter_server/core/middleware/middleware.dart';

Pipeline buildPipeline() =>
   const Pipeline().addMiddleware(logRequests()).addMiddleware(jsonMiddleware);
