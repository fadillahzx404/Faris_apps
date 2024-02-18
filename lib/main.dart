import 'package:faris_app/providers/users_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/splashscreen.dart';

void main() {
  runApp(const FarisApps());
}

class FarisApps extends StatelessWidget {
  const FarisApps({Key? key}) : super(key: key);

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
