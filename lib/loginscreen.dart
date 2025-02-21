import 'package:doanmyphamflutter/signupscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[100], // Màu nền của ứng dụng
          body: Login(),
        ),
      ),
      debugShowCheckedModeBanner: false, // Ẩn banner debug
    );
  }
}
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Center(
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
              'LOGIN',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child:const Text("Đăng nhập",)),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupScreen(), // Thay LoginScreen bằng tên màn hình muốn chuyển đến
              )
            );
          },
              child:const Text("Đăng ký",)),
        ],
      ),
    );
  }

}