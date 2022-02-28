import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_json_getx/models/get_terms_model.dart';

class TermsController extends GetxController {
  Rx<GetTerms> _terms = Rx<GetTerms>(GetTerms(
    title: "",
    content: "",
  ));
  GetTerms get terms => _terms.value;

  loadJsonTerms() async {
    String data = await rootBundle.loadString("assets/get_terms.json");
    List<dynamic> jsonResultTerms = jsonDecode(data);

    _terms.value = jsonResultTerms.map((e) => GetTerms.fromJson(e)).first;

    print(data);
    print(jsonResultTerms);
    print(_terms);
  }
}
