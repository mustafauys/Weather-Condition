import 'package:flutter/material.dart';

class SehirSecWidget extends StatefulWidget {
  @override
  _SehirSecWidgetState createState() => _SehirSecWidgetState();
}

class _SehirSecWidgetState extends State<SehirSecWidget> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Şehir Seç"),),
      body: Form(child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Şehir',
                  hintText: 'Şehir Seçin',
                  border: OutlineInputBorder(),
                ),
            ),
              ),
          ),
          IconButton(icon: Icon(Icons.search), onPressed: (){
            Navigator.pop(context, _textController.text);
          })
        ],
      ),),
    );
  }
}