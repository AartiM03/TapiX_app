import 'package:flutter/material.dart';
import 'add_alarm.dart';
import 'remove_glove.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _temperature = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            Text(
              'User',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Glove Temperature',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.thermostat, color: Colors.blue),
                          SizedBox(height: 4),
                          Text(
                            'Inside',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            '15°C',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.ac_unit, color: Colors.blue),
                          SizedBox(height: 4),
                          Text(
                            'Outside',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            '4°C',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 0),
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(Icons.add, color: Colors.blue),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Adjust Temperature',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _temperature,
              min: 10,
              max: 30,
              divisions: 20,
              label: '${_temperature.round()}°C',
              activeColor: Colors.purple,
              inactiveColor: Colors.grey[300],
              onChanged: (value) {
                setState(() {
                  _temperature = value;
                });
              },
            ),
            SizedBox(height: 25),
            _buildOptionButton(
              label: 'Want to remove glove?',
              buttonText: 'Click',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemoveGlovePage()),
                );
              },
            ),
            SizedBox(height: 10),
            _buildOptionButton(
              label: 'Add Alarm',
              buttonText: 'Set',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAlarmPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton({
    required String label,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[100],
            foregroundColor: Colors.blue[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fixedSize: Size(80, 40), // Sets button size to be consistent
          ),
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ],
    );
  }
}
