import 'dart:convert';

import 'package:extraordinario/homescreen/MyHomePageView.dart';
import 'package:extraordinario/model/Program.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as network;

class MyHomePagePresenter {
  MyHomePageView _view;

  MyHomePagePresenter(this._view);

  fetchData() async {
    _view.showLoading();
    network.Response response =
    await network.get('http://api.tvmaze.com/schedule?date=2019-06-07');
    if (response.statusCode == 200) {

      final jsonBody = json.decode(response.body);
      List<Program> categories = jsonBody.map<Program>((element) {
        String id = element['id'];
        String name = element['name'];
        String date = element['show'];

        return Program(id, name, date);
      }).toList();

      print(categories);
      _view.showCategories(categories);
    } else {
      _view.showError();
    }
    _view.hideLoading();
  }

  elementClicked(Program category) {
    _view.openDetailScreen(category);
  }
}