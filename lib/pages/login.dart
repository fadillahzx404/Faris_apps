import 'package:faris_app/pages/admin/home_admin.dart';
import 'package:faris_app/pages/penjahit/home_penjahit.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80.0,
          left: 24,
          right: 24,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Logo_Faris.png',
                    height: 40,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Faris Apps',
                    style: headlines6,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Halo, Silakan Login untuk\nmasuk ke akun anda.',
                style: headlines6,
              ),
              const SizedBox(
                height: 48,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: subtitle2,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    style: caption,
                    decoration: InputDecoration(
                      fillColor: A100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Masukan Username',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Password',
                    style: subtitle2,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    obscureText: true,
                    style: caption,
                    decoration: InputDecoration(
                      fillColor: A100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Masukan Password',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: A500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              Center(
                child: Container(
                  height: 45,
                  width: 144,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: <Color>[
                          Color.fromARGB(255, 245, 245, 245),
                          Color(0xffC8F1A2),
                        ]),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: A400,
                        blurRadius: 4.0,
                        offset: const Offset(
                          0.0,
                          4,
                        ),
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: Text(
                                    'Silakan Pilih Menu Login Ke Roles Apa ?',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 18,
                                  ),
                                  child: Column(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () =>
                                            Navigator.pushReplacement(
                                                context,
                                                PageRouteBuilder(
                                                  pageBuilder: (context,
                                                          animation1,
                                                          animation2) =>
                                                      HomeAdmin(),
                                                  transitionDuration:
                                                      Duration(seconds: 1),
                                                  reverseTransitionDuration:
                                                      Duration(seconds: 1),
                                                )),
                                        child: Text(
                                          'Login Admin',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 12,
                                        ),
                                        child: Text('Or'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () =>
                                            Navigator.pushReplacement(
                                                context,
                                                PageRouteBuilder(
                                                  pageBuilder: (context,
                                                          animation1,
                                                          animation2) =>
                                                      HomePenjahit(),
                                                  transitionDuration:
                                                      Duration(seconds: 1),
                                                  reverseTransitionDuration:
                                                      Duration(seconds: 1),
                                                )),
                                        child: Text(
                                          'Login Penjahit',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: button,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Center(
                child: Text(
                  'Atau \nlogin menggunakan',
                  style: body2,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Container(
                  width: 272,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: A500,
                      width: 1,
                    ),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/logo_google.png',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Login menggunakan google',
                            style: body2,
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
