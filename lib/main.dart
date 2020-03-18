import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: CustomerCard() ,
));

class CustomerCard extends StatefulWidget{
  @override
  _CustomerCardState createState() => _CustomerCardState();
}

class _CustomerCardState extends State<CustomerCard> {
  @override
  int customerlevel=0 ; 
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.amberAccent[100],
      appBar: AppBar(
        title : Text('Customer ID Card'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed : (){
          setState((){
            customerlevel += 1;

          }
         );
        },
      child : Icon(
        Icons.add,
        color: Colors.white,
        ), 
      backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/What We Love_ Orange Crush.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height : 60.0,
              color : Colors.grey[800],
            ),
            Text(
              'NAME',
              style : TextStyle(
                color : Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Belamri',
              style : TextStyle(
                color : Colors.orange,
                fontSize: 20.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT CUSTOMER LEVEL',
              style : TextStyle(
                color : Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$customerlevel',
              style : TextStyle(
                color : Colors.orange,
                fontSize: 20.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color  : Colors.white,
                ),
                SizedBox(width : 10.0),
                Text(
                  'Belamri@customer.co.uk',
                  style : TextStyle(
                    color : Colors.orange,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}