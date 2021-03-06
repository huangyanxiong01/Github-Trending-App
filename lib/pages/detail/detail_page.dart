import 'package:GTA/pages/detail/containers/readme_container.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final void Function() onInit;
  final String title;

  DetailPage({Key key, @required this.onInit, @required this.title})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DetailPageState(title);
  }
}

class DetailPageState extends State<DetailPage> {
  final String title;

  DetailPageState(this.title);

  @override
  void initState() {
    widget.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReadmeContainer(),
        appBar: AppBar(
          title: Text(title),
        ));
  }
}
