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
    Center(
    child:Container(
    margin: EdgeInsets.only(top:5,bottom: 0),
    child: Text("이원찬님, 안녕하세요.",style:TextStyle(fontSize: 15,color: Colors.black),),
    )
    ),
        SizedBox(height: 100,),
        ElevatedButton(
        onPressed: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => re_info()
          )
      );
    },
    child: Text('내 정보 수정'),
    //ElevatedButton 은 backgroundColor 속성이 없다.
    //ElevatedButton 에서는 primary 속성이 배경색을 담당한다.
    style: ElevatedButton.styleFrom(
    primary: Colors.grey,

    minimumSize: Size(350,30),

    ),
    ),
        ElevatedButton(
        onPressed: (){
      print('실시간 주가');
    },
    child: Text('실시간 주가'),
    //ElevatedButton 은 backgroundColor 속성이 없다.
    //ElevatedButton 에서는 primary 속성이 배경색을 담당한다.
    style: ElevatedButton.styleFrom(
    primary: Colors.grey,

    minimumSize: Size(350,30),

    ),
    ),
        ElevatedButton(
        onPressed: (){
      print('수익률 확인');
    },
    child: Text('수익률 확인'),
    //ElevatedButton 은 backgroundColor 속성이 없다.
    //ElevatedButton 에서는 primary 속성이 배경색을 담당한다.
    style: ElevatedButton.styleFrom(
    primary: Colors.grey,

    minimumSize: Size(350,30),

    ),
    ),

    Center(
    child:Container(
    color : Colors.grey,
    width : 350,
    height : 1,
    margin: EdgeInsets.only(top:20,bottom: 0),

    ),

    ),
        SizedBox(height: 20,),

        ElevatedButton(
        onPressed: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginPage()
          )
      );

    },
    child: Text('로그아웃'),