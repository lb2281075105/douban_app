
import 'package:flutter/material.dart';
import 'components/tabbar_item.dart';
import 'views/home/home.dart';
import 'views/group/group.dart';
import 'views/mall/mall.dart';
import 'views/profile/profile.dart';
import 'views/subject/subject.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "JCSON",
      home: MyStackPage(),
      theme: ThemeData(
        primaryColor: Colors.green,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }
}
class MyStackPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStackPageState();
  }
}

class MyStackPageState extends State<MyStackPage>{
  final textStyle = TextStyle(fontSize: 20,color: Colors.red);

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Home(),
          Subject(),
          Group(),
          Mall(),
          Profile()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: [
          createItem("home", "首页"),
          createItem("subject", "书影音"),
          createItem("group", "小组"),
          createItem("mall", "市集"),
          createItem("profile", "我的"),

        ],
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}






















