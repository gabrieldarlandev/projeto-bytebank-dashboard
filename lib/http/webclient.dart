import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:projeto_dashboard/http/interceptors/logging_interceptor.dart';

final Client client =
    HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);
const String baseUrl = 'http://192.168.0.181:8080/transactions';

