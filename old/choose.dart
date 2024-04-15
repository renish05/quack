import 'package:flutter/material.dart';
import 'package:quack/pages/login.dart';
import 'package:quack/pages/logint.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({Key? key}) : super(key: key);

  @override
  _ChoosePageState createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login as',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomRadioButton(
                    label: 'Client',
                    image:
                        'assets/client.jpg', // Replace with the actual path to the client image
                    value: 0,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value as int?;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomRadioButton(
                    label: 'Technician',
                    image:
                        'assets/technician.jpg', // Replace with the actual path to the technician image
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value as int?;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPageT()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    Key? key,
    required this.label,
    required this.image,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final String image;
  final int value;
  final int? groupValue;
  final ValueChanged? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged!(value);
      },
      child: Column(
        children: [
          Image.asset(
            image,
            width: 100,
            height: 200,
            // Adjust the width and height as needed
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 24, // Adjust the font size as needed
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
