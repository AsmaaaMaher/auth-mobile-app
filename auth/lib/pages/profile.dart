import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_picture.jpg'), width: 50,
              ),
              SizedBox(height: 20),
              // Name Button
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 4,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.purple[800]),
                      title: Text(
                        "Name",
                        style: TextStyle(color: Colors.purple[800], fontSize: 18),
                      ),
                      subtitle: Text(
                        "John Doe", // Replace with the user's name
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle name button click
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.purple[800]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Email Button
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 4,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.purple[800]),
                      title: Text(
                        "Email",
                        style: TextStyle(color: Colors.purple[800], fontSize: 18),
                      ),
                      subtitle: Text(
                        "johndoe@example.com", // Replace with the user's email
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle email button click
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.purple[800]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Password Button
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 4,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.lock, color: Colors.purple[800]),
                      title: Text(
                        "Password",
                        style: TextStyle(color: Colors.purple[800], fontSize: 18),
                      ),
                      subtitle: Text(
                        "********", // Placeholder for the user's password
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle password button click
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                      child: Text(
                        "Change",
                        style: TextStyle(color: Colors.purple[800]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
