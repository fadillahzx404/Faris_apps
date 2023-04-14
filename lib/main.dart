import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/splashscreen.dart';

import 'package:faris_app/providers/users_providers.dart';

void main() {
  runApp(FarisApps());
}

class FarisApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsersProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
