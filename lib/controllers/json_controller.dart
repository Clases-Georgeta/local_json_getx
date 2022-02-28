import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:local_json_getx/models/user.dart';
import 'package:local_json_getx/models/user_my_json.dart';

class JsonController extends GetxController {
  final Rx<List<User>> _usersList = Rx<List<User>>([]);

  List<User> get users => _usersList.value.obs;

  @override
  void onReady() {
    loadJson();
  }

  loadJson() async {
    String data = await rootBundle.loadString("assets/users.json");
    List<dynamic> jsonResultUsers = jsonDecode(data);
    _usersList.value = jsonResultUsers.map((e) => User.fromJson(e)).toList();
    //_usersList.value = UserMyJson.fromJson(jsonResultUsers).data;

    print(jsonResultUsers);
    print(_usersList.value);
    print(_usersList.value[0].first_name);
  }
}
