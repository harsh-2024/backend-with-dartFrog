import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  final method = request.method.name;
  final methodValue = request.method.value;
  final params = request.uri.queryParameters;
  final name = params['name'] ?? 'there';
  return Response(
      body:
          'Welcome to the Dart Frog server!\n ${methodValue}\n ${method} \n ${name}');
}
