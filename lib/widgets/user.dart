import 'package:flutter/material.dart';


class UserWidget extends StatelessWidget {
  final List data;
  const UserWidget({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.network(data[index]['thumbnailUrl']),
      ),);
  }
}