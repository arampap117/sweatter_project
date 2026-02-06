import 'package:shelf/shelf.dart';

Handler jsonMiddleware(final Handler inner) => (final Request request) async {
  final Response response = await inner(request);
  return response.change(headers: {'content-type': 'application/json'});
};
