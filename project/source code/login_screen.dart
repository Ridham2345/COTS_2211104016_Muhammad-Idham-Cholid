import 'package:flutter/material.dart';

void main() => runApp(MyLoginscreen());

class MyLoginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    // Menambahkan logo
                    Image.asset(
                      'assets/images/logo.png', // Ganti dengan path logo Anda
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Text(
                'Enter your registered phone number to log in',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                'Phone number*',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '+62',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Enter phone number',
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Handle "Issue with number?" action
                },
                child: Text(
                  'Issue with number?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Handle continue action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
