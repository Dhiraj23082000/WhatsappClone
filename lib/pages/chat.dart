
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Column(
              children:<Widget>[Divider(height: 10.0,),
                 ListTile(
          leading: CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(dummydata[index].avatarUrl),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                dummydata[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                dummydata[index].time,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          subtitle: Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              dummydata[index].message,
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
        ),],
      ),
      itemCount: dummydata.length,
    );
  }
}
