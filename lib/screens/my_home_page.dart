import 'package:flutter/material.dart';
import 'package:placeholder/services/service.dart';
import 'package:placeholder/widgets/user.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Holder'),
      ),
      body: FutureBuilder(
        future: Service.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Check your internet connection'),
            );
          } else {
            return UserWidget(data: snapshot.data);
          }
        },
      ),
    );
  }
}
