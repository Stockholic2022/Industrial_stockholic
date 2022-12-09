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
          //ElevatedButton 은 backgroundColor 속성이 없다.
          //ElevatedButton 에서는 primary 속성이 배경색을 담당한다.
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape: RoundedRectangleBorder(
              // shape : 버튼의 모양을 디자인 하는 기능

                borderRadius: BorderRadius.circular(10.0)
            ),
            minimumSize: Size(350,50),

          ),
        ),


          SizedBox(height: 60,),
          Center(
            child: Text("Stockholic",style:TextStyle(fontSize: 15,color: Colors.black),),
          ),


        ]
        ),
    );
  }
}
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body : Column(
        children: <Widget>[
        SizedBox(height: 100,),
    Center(
    child:Container(
    color : Colors.black,
    width : 350,
    height : 1,
    margin: EdgeInsets.only(top:20,bottom: 20),
    ),
    ),

    Center(
    child: Container(
    padding: EdgeInsets.all(30.0),  //패딩을 줘서 좌우 간격을 띄운다.
    child: Column(
    children: <Widget>[
    TextField(
    decoration: InputDecoration(
    labelText: 'id',
    border: OutlineInputBorder(),
    ),
    ),
    SizedBox(height: 10,),
    TextField(
    decoration: InputDecoration(
    labelText: 'password',
    border: OutlineInputBorder(),
    ),
    obscureText: true,
    )
    ],
    ),
    )
    ),
        ElevatedButton(
        onPressed: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyPage()
          )
      );

    },
    child: Text('로그인'),

    //ElevatedButton 은 backgroundColor 속성이 없다.
    //ElevatedButton 에서는 primary 속성이 배경색을 담당한다.
    style: ElevatedButton.styleFrom(
    primary: const Color(0x6CC633D0),
    shape: RoundedRectangleBorder(
    // shape : 버튼의 모양을 디자인 하는 기능

    borderRadius: BorderRadius.circular(10.0)
    ),
    minimumSize: Size(350,50),

    ),
    ),
          Center(
            child:Container(
              color : Colors.black,
              width : 350,
              height : 1,
              margin: EdgeInsets.only(top:20,bottom: 0),
            ),
          ),
          SizedBox(height: 240,),
          Center(
            child:Container(
              child: Text("Stockholic",style:TextStyle(fontSize: 15,color: Colors.black),),
              // margin: EdgeInsets.all(120),
            ),
          ),


        ]
        )
    );
  }
}

class re_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body : Column(
        children: <Widget>[

        SizedBox(height: 60,),
    Center(
    child: Text("회원정보 수정",style:TextStyle(fontSize: 25,color: Colors.black),),
    ),

    SizedBox(height: 50,),

    Center(
    child: Container(
    padding: EdgeInsets.all(30.0),  //패딩을 줘서 좌우 간격을 띄운다.
    child: Column(
    children: <Widget>[
    TextField(
    decoration: InputDecoration(
    labelText: 'E-MAIL',
    border: OutlineInputBorder(),
    ),
    ),
    SizedBox(height: 10,),
    TextField(
    decoration: InputDecoration(
    labelText: 'password',
    border: OutlineInputBorder(),
    ),
    obscureText: true,
    ),
    SizedBox(height: 10,),
    TextField(
    decoration: InputDecoration(
    labelText: '생년월일',
    border: OutlineInputBorder(),
    ),
    ),

    SizedBox(height: 10,),
    TextField(
    decoration: InputDecoration(
    labelText: '연락처',
    border: OutlineInputBorder(),
    ),
    )
    ],
    ),
    )
    ),


