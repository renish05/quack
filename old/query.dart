import 'package:flutter/material.dart';
import 'package:quack/pages/homet.dart';

class QueryPage extends StatefulWidget {
  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  TextEditingController bidController = TextEditingController();
  TextEditingController bid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Query',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Address',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'House 5, 123 Street, Kudasan',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Query Description',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'I need a AC mechanic / electrician for regular AC maintenance',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Enter your bid:',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: bidController,
                decoration: InputDecoration(labelText: 'Bid Description'),
              ),
              SizedBox(height: 5),
              TextField(
                controller: bid,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: 'Bid amount'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform actions with the bid value
                  // You can process or store the bidValue here

                  // Navigate to HomePageT
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageT()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Set the desired background color
                  onPrimary: Colors.white, // Set the desired text color
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Place Bid',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showSuccessDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Bid Placed Successfully'),
          content: Text('Your bid has been successfully placed.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
