import 'package:quack/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({Key? key}) : super(key: key);

  @override
  _DateAndTimeState createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  int _selectedDay = 2;
  int _selectedRepeat = 0;
  String _selectedHour = '01:00';

  ItemScrollController _scrollController = ItemScrollController();

  final List<dynamic> _days = [
    [1, 'Fri'],
    [2, 'Sat'],
    [3, 'Sun'],
    [4, 'Mon'],
    [5, 'Tue'],
    [6, 'Wed'],
    [7, 'Thu'],
    [8, 'Fri'],
    [9, 'Sat'],
    [10, 'Sun'],
    [11, 'Mon'],
    [12, 'Tue'],
    [13, 'Wed'],
    [14, 'Thu'],
    [15, 'Fri'],
    [16, 'Sat'],
    [17, 'Sun'],
    [18, 'Mon'],
    [19, 'Tue'],
    [20, 'Wed'],
    [21, 'Thu'],
    [22, 'Fri'],
    [23, 'Sat'],
    [24, 'Sun'],
    [25, 'Mon'],
    [26, 'Tue'],
    [27, 'Wed'],
    [28, 'Thu'],
    [29, 'Fri'],
    [30, 'Sat'],
  ];

  final List<String> _hours = <String>[
    '01:00',
    '01:30',
    '02:00',
    '02:30',
    '03:00',
    '03:30',
    '04:00',
    '04:30',
    '05:00',
    '05:30',
    '06:00',
    '06:30',
    '07:00',
    '07:30',
    '08:00',
    '08:30',
    '09:00',
    '09:30',
    '10:00',
    '10:30',
    '11:00',
    '11:30',
    '12:00',
    '12:30',
    '13:00',
    '13:30',
    '14:00',
    '14:30',
    '15:00',
    '15:30',
    '16:00',
    '16:30',
    '17:00',
    '17:30',
    '18:00',
    '18:30',
    '19:00',
    '19:30',
    '20:00',
    '20:30',
    '21:00',
    '21:30',
    '22:00',
    '22:30',
    '23:00',
    '23:30',
  ];

  final List<String> _repeat = [
    'No repeat',
    'Every day',
    'Every week',
    'Every month'
  ];

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      _scrollController.scrollTo(
        index: 24,
        duration: Duration(microseconds: 1),
        curve: Curves.easeInOut,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Success'),
                content: Text('Request placed successfully!'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                      // Navigate to the home page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 120.0, right: 20.0, left: 20.0),
                child: Text(
                  'Select Date \nand Time',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("September 2023"),
                  Spacer(),
                  IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 1.5, color: Colors.grey.shade200),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _days.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedDay = _days[index][0];
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: _selectedDay == _days[index][0]
                              ? Colors.black.withOpacity(0.5)
                              : Colors.black.withOpacity(0),
                          border: Border.all(
                            color: _selectedDay == _days[index][0]
                                ? Colors.black
                                : Colors.white.withOpacity(0),
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _days[index][0].toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              _days[index][1],
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 1.5, color: Colors.grey.shade200),
                ),
                child: ScrollablePositionedList.builder(
                  itemScrollController: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: _hours.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedHour = _hours[index];
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: _selectedHour == _hours[index]
                              ? Colors.black.withOpacity(0.5)
                              : Colors.black.withOpacity(0),
                          border: Border.all(
                            color: _selectedHour == _hours[index]
                                ? Colors.black
                                : Colors.white.withOpacity(0),
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _hours[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Repeat",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _repeat.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedRepeat = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: _selectedRepeat == index
                              ? Colors.black
                              : Colors.grey.shade100,
                        ),
                        margin: EdgeInsets.only(right: 20),
                        child: Center(
                          child: Text(
                            _repeat[index],
                            style: TextStyle(
                              fontSize: 18,
                              color: _selectedRepeat == index
                                  ? Colors.white
                                  : Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(12.0),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement your file upload logic here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                child: Text('Upload Attachments'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
