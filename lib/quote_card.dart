import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      shadowColor: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${quote.img}'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 10.0),
            Text(
              ' " ${quote.author} " ',
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
                onPressed: delete,
                label: Text(''),
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
