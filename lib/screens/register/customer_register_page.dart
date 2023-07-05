import 'package:biyemek/screens/onboarding/introduction_screen.dart';
import 'package:biyemek/screens/login/login_page.dart';
import 'package:biyemek/screens/register/Choose_register.dart';

import 'package:biyemek/screens/register/register_page.dart';
import 'package:biyemek/services/auth_service.dart';
import 'package:flutter/material.dart';

class CustomerLoginScreen extends StatefulWidget {
  const CustomerLoginScreen({Key? key}) : super(key: key);

  @override
  State<CustomerLoginScreen> createState() => _CustomerLoginScreenState();
}

class _CustomerLoginScreenState extends State<CustomerLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2F3EE),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return  Choose_register();
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.arrow_back_ios_new_rounded,
                                color: Color(0xFFE2F3EE)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Image(
                    image: AssetImage('assets/images/onboarding/login.png'),
                    width: 500, // İstenilen genişlik
                    height: 300, // İstenilen yükseklik
                    fit: BoxFit.cover, // Resmi sığdırma şekli
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "İSRAFI ÖNLEMENİN",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Text(
                          "UCUZ VE LEZZETLİ YOLU",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '''Günlük listelenen uygun fiyatlı ürünlerle, 
     gıda israfını önlemeye hemen başla!''',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const RegisterPage();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFFA1E7D2),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  "Üye Ol",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 20),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginPage();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFFA1E7D2),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  "Giriş Yap",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),// Add spacing between the containers

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomPaint(
                          painter: LinePainter(),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Text(
                          "Ya da",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomPaint(
                          painter: LinePainter(),
                        ),
                      ),
                      

                    ],
                  ),
                  SizedBox(height: 30),
                  Text("Üye Olmadan Devam Et",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      decorationThickness: 2.0,
                      decorationStyle: TextDecorationStyle.solid,
                    ),)

                ],
              ),
            ),
          ),
        ));
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFA1E7D2)
      ..strokeWidth = 1;

    final startPoint = Offset(0, size.height / 2);
    final endPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


