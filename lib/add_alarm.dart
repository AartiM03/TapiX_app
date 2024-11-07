import 'package:flutter/material.dart';

class AddAlarmPage extends StatelessWidget {
  const AddAlarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Add Alarm",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Action for more options
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            _buildOptionRow(
              icon: Icons.access_time,
              label: 'Time',
              value: '09:00 PM',
              onTap: () {
                // Action for setting time
              },
            ),
            _buildOptionRow(
              icon: Icons.hourglass_bottom,
              label: 'Hours',
              value: '8 hours 30 minutes',
              onTap: () {
                // Action for setting hours
              },
            ),
            _buildOptionRow(
              icon: Icons.repeat,
              label: 'Repeat',
              value: 'Every 10 hours',
              onTap: () {
                // Action for setting repeat interval
              },
            ),
            _buildToggleRow(
              icon: Icons.vibration,
              label: 'Vibrate When Alarm Sound',
              value: true,
              onChanged: (bool value) {
                // Handle toggle switch change
              },
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(double.infinity, 60), // Full-width button
              ),
              onPressed: () {
                // Action for add alarm
              },
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionRow({
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.grey),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleRow({
    required IconData icon,
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.lightBlue[200],
          ),
        ],
      ),
    );
  }
}
