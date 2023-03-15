import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  final method = request.method.name;
  final methodValue = request.method.value;
  final params = request.uri.queryParameters;
  final name = params['name'] ?? 'no_name_defined';
  return Response.json(body: <String, dynamic>{
    'RequestName': method,
    'YourName': name,
    'MethodValue': methodValue
  });
}
