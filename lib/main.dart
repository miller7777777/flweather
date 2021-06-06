import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _headerImage(),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://elektro-sadovnik.ru/wp-content/uploads/2020/01/3-kakaya-budet-vesna.jpg'),
    fit: BoxFit.cover,
  );
}
