import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QouteList(),
    ));

class QouteList extends StatefulWidget {
  @override
  _QouteListState createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {
  List<Quote> quotes = [
    Quote(
      author: 'Ian Destura',
      text:
          'Yesterday is a history, Tommorow is a mystery, Today is a gift, Thats why it is called Present',
      img: 'assets/1.jpg',
    ),
    Quote(
      author: 'Nelson Mandela',
      text:
          'The greatest glory in living lies not in never falling, but in rising every time we fall.',
      img: 'assets/2.jpg',
    ),
    Quote(
      author: 'Steve Jobs',
      text:
          'Your time is limited, so do not waste it living someone else is life. Do not be trapped by dogma – which is living with the results of other people is thinking.',
      img: 'assets/3.jpg',
    ),
    Quote(
      author: 'Eleanor Roosevelt',
      text:
          'If life were predictable it would cease to be life, and be without flavor.',
      img: 'assets/4.jpg',
    ),
    Quote(
      author: 'Oprah Winfrey',
      text:
          'If you look at what you have in life, you will always have more. If you look at what you do not have in life, you will never have enough',
      img: 'assets/5.jpg',
    ),
    Quote(
      author: 'John Lennon',
      text: 'Life is what happens when you are busy making other plans.',
      img: 'assets/6.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        body: Scrollbar(
            child: ListView(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          children: <Widget>[
            Column(
              children: quotes
                  .map((quote) => QuoteCard(
                        quote: quote,
                        delete: () {
                          setState(() {
                            quotes.remove(quote);
                          });
                        },
                      ))
                  .toList(),
            ),
          ],
        )));
  }
}
