import 'package:flutter/material.dart';
import 'package:ui_project/fifth_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FifthPage()),
            );
          },
        ),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/animations/DaeKYh1.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Programmer",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "+91 9342563728",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24.0),
                _buildSettingItem(Icons.person, 'Account'),
                _buildSettingItem(Icons.laptop_mac, 'Linked devices'),
                _buildSettingItem(Icons.settings, 'Appearance'),
                _buildSettingItem(Icons.chat, 'Chats'),
                _buildSettingItem(Icons.book, 'Stories'),
                _buildSettingItem(Icons.notifications, 'Notifications'),
                _buildSettingItem(Icons.lock, 'Privacy'),
                _buildSettingItem(Icons.data_usage, 'Data and storage'),
                _buildSettingItem(Icons.credit_card, 'Payments'),
                _buildSettingItem(Icons.help_outline, 'Help'),
                _buildSettingItem(Icons.mail_outlined, 'Invite your friends'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        // Handle item tap
      },
    );
  }
}