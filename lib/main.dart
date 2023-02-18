import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Log in'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                      child: Image(
                    image: AssetImage('dj.gif'),
                    width: 500.0,
                    height: 300.0,
                  )),
                  // form은 입력받을 때 쓰는 위젯
                  Form(
                      child: Theme(
                          data: ThemeData(
                              primaryColor: Colors.teal,
                              inputDecorationTheme: InputDecorationTheme(
                                  labelStyle: TextStyle(
                                color: Colors.teal,
                                fontSize: 15.0,
                              ))),
                          child: Container(
                              padding: EdgeInsets.all(40.0),
                              child: Column(
                                children: <Widget>[
                                  TextField(
                                    decoration: InputDecoration(
                                        labelText: 'Enter "dice"'),
                                    keyboardType: TextInputType.emailAddress,
                                    controller: controller,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        labelText: 'Enter "password"'),
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                    controller: controller2,
                                  ),
                                  SizedBox(height: 40.0),
                                  ButtonTheme(
                                      minWidth: 100.0,
                                      height: 50.0,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.orangeAccent),
                                        child: Icon(Icons.arrow_forward,
                                            color: Colors.white, size: 35.0),
                                        onPressed: () {
                                          // if 문
                                          if (controller.text == 'dice' &&
                                              controller2.text == '1234') {
                                            //   Navigator.push(context,
                                            //     MaterialPageRoute(builder: (
                                            //       BuildContext context) =>
                                            //     Dice()));
                                          } else if (controller.text ==
                                                  'dice' &&
                                              controller2.text != '1234') {
                                          } else if (controller.text !=
                                                  'dice' &&
                                              controller2.text == '1234') {
                                          } else {}
                                        },
                                      ))
                                ],
                              ))))
                ],
              ),
            );
          },
        ));
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      '로그인 정보를 다시 확인하세요',
      textAlign: TextAlign.center,
    ),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}
