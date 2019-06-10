import 'dart:convert';
import 'package:extraordinario/datascreen/DetailPage.dart';
import 'package:extraordinario/model/Details.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as network;

class DetailPagePresenter {
  DetailPage _view;

  DetailPagePresenter(this._view);

  fetchData(int idprog) async {
   // _view.showLoading();
    network.Response response =
    await network.get('http://api.tvmaze.com/shows/');
    if (response.statusCode == 200) {

      final jsonBody = json.decode(response.body);
      List<Details> categories = jsonBody.map<Details>((element) {
        String id = element['id'];
        String name = element['name'];
        String photo = element['show'];

        return Details(id,name, photo);
      }).toList();

      print(categories);
    //  _view.showCategories(categories);
    } else {
    //  _view.showError();
    }
   // _view.hideLoading();
  }

 // elementClicked(Program category) {
//    _view.openDetailScreen(category);
  }
//}