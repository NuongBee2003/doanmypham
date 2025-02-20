import 'package:doanmyphamflutter/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100], // Màu nền của ứng dụng
        body: SplashScreen(),
      ),
      debugShowCheckedModeBanner: false, // Ẩn banner debug
    ),

  );
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo chiều dọc
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/logo_mypham.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20), // Tạo khoảng cách giữa ảnh và chữ
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Mỹ Phẩm DD',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

