import 'package:apitest/app/apis/api.dart';
import 'package:apitest/app/models/CrapModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ResposeCrap? resposeCrap = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  GetData() async {
    resposeCrap = await Api().GetCrab();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          resposeCrap == null
              ? Text('hola muido')
              : Text(resposeCrap!.origin.name),
          resposeCrap == null
              ? Text('json')
              : Text(resposeCrap!.toJson().toString()),
          CupertinoButton(
              child: Text('llamar data'),
              onPressed: () {
                GetData();
              })
        ]),
      ),
    );
  }
}
