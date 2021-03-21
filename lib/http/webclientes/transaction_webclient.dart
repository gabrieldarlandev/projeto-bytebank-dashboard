import 'dart:convert';

import 'package:http/http.dart';
import 'package:projeto_dashboard/http/webclient.dart';
import 'package:projeto_dashboard/models/transaction.dart';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    var response = await client.get(baseUrl).timeout(Duration(seconds: 5));
    final List<dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson
        .map((dynamic json) => Transaction.fromJsom(json))
        .toList();
  }

  Future<Transaction> save(Transaction transaction) async {
    final String transactionJson = jsonEncode(transaction.toJson());
    final Response response = await client.post(baseUrl,
        headers: {'Content-type': 'application/json', 'password': '1000'},
        body: transactionJson);

    return Transaction.fromJsom(jsonDecode(response.body));
  }
}
