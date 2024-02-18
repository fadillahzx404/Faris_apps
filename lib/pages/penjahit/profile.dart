import "package:faris_app/pages/login.dart";
import "package:flutter/material.dart";

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Login())),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
