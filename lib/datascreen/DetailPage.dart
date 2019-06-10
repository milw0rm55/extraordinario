
import 'package:extraordinario/homescreen/myhomepage.dart';
import 'package:extraordinario/model/Program.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  final Program category;

  DetailPage(this.category);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void _showAlert(BuildContext context, String title, String message,
      bool isTrue) {
    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: Text(title),
              content: Text(message),
              actions: <Widget>[
                MaterialButton(
                  height: 40.0,
                  minWidth: 60.0,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  child: Text("X"),
                  onPressed: () {
                    if (!isTrue) {
                      Navigator.pop(context);
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    }
                  },
                  splashColor: Colors.green,
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}