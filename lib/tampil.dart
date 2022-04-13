import 'package:flutter/material.dart';
import 'package:posttest3_1915026006_jazzogibran/main.dart';
import 'package:posttest3_1915026006_jazzogibran/mainpage.dart';

class tampil extends StatefulWidget {
  const tampil({Key? key}) : super(key: key);

  @override
  State<tampil> createState() => _tampilState();
}

class _tampilState extends State<tampil> {
  @override
  Widget build(BuildContext context) {
    var uname = MainPage.uname;
    var pass = MainPage.pass;
    var cpass = MainPage.cpass;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 71, 104),
      body: Column(
        children: [
          const Spacer(),
          Center(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    "BERHASIL REGISTRASI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'JosefinSans',
                    ),
                  ))),
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/icon.png',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "USERNAME $uname",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "PASS $pass",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "CPASS $cpass",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('KEMBALI'),
            ),
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 4),
            child: const Text(
              "JAZZ O'GIBRAN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          const Text(
            "POWERED BY BANK INDONESIA",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'JosefinSans',
            ),
          ),
        ],
      ),
    );
  }
}
