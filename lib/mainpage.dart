import 'package:flutter/material.dart';
import 'package:posttest3_1915026006_jazzogibran/main.dart';
import 'package:posttest3_1915026006_jazzogibran/tampil.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static String uname = "", pass = "", cpass = "";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final unamectrl = TextEditingController();
  final cpassctrl = TextEditingController();
  final passctrl = TextEditingController();

  @override
  void dispose() {
    unamectrl.dispose();
    passctrl.dispose();
    cpassctrl.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    unamectrl.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 71, 104),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: mediaQueryHeight / 7,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/icon.png',
                  ),
                ),
              ),
              Center(
                  child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'JosefinSans',
                        ),
                      ))),
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  controller: unamectrl,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      label: Center(child: Text('USERNAME')),
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  controller: passctrl,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      label: Center(child: Text('PASSWORD')),
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  controller: cpassctrl,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Colors.white, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      label: Center(child: Text('CONFRIM PASSWORD')),
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    MainPage.uname = unamectrl.text;
                    MainPage.pass = passctrl.text;
                    MainPage.cpass = cpassctrl.text;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tampil()),
                  );
                },
                child: const Text("REGISTER"),
              ),
              SizedBox(
                height: mediaQueryHeight / 11,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 4),
                  child: Text(
                    "JAZZ O'GIBRAN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'JosefinSans',
                    ),
                  ),
                ),
              ),
              Center(
                child: const Text(
                  "POWERED BY BANK INDONESIA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'JosefinSans',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
