import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/src/font_awesome_icon_class.dart';
import 'package:shop_app/signup_screen.dart';

import 'login_screen.dart';

class secondSrc extends StatelessWidget {
  const secondSrc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                'assets/images/background.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Custom Paint Widget at the top
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   right: 0,
          //   child: CustomPaint(
          //     painter: CurvyPainter(Colors.blue),
          //     child: Container(height: 150), // Adjust height as needed
          //   ),
          // ),

          // Custom Paint Widget at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              painter: CurvyPainter(Colors.purple),
              child: Container(height: 150), // Adjust height as needed
            ),
          ),

          // Centered Content
          Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Geeta.',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FaIcon(
                          Icons.shopping_bag_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '''Create your fashion
in your own way''',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''Each men and women has their own style, 
 Geeta help you to create your unique style.''',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    //textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Opacity(
                    opacity: 0.6,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          // Adjust the radius as needed
                          side: BorderSide(
                            color: Colors.black, // Change the border color
                            width: 2.0, // Adjust the width of the border
                          ),
                        ),
                      ),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "------ OR ------",
                        style: TextStyle(
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  )),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                      ),
                    ),
                    child: Text(
                      'REGISTER',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvyPainter extends CustomPainter {
  final Color color;

  CurvyPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.8,
      size.width * 0.5,
      size.height * 0.75,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.7,
      size.width,
      size.height * 0.8,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
