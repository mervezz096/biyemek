import 'package:flutter/material.dart';
class location extends StatefulWidget {
  const location({Key? key}) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(

        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),

            child: AppBar(





              title: Text(
                "Konum",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),),

              iconTheme: IconThemeData(
                color: Colors.green,
              ),


              backgroundColor: Color(0xFFEDECF5),

            ),
          ),


        ],
      ),
    );
  }
}
