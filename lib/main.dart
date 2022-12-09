import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,



      theme: ThemeData(primarySwatch : Colors.blue,),
      home: Scaffold(
        body: Center(
          child: MyPage(),
        ),
      ),
    );
  }
}
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body : Column(
        children: <Widget>[


        SizedBox(height: 60,),

    Center(
    child: Text("마이페이지",style:TextStyle(fontSize: 25,color: Colors.black),),
    ),
    SizedBox(height: 90,),