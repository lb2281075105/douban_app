import 'package:flutter/material.dart';
import 'package:douban_app/network/http_request.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: HomeBody()
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HttpRequest.request("https://douban.uieee.com/v2/movie/top250?start=0&count=20").then((res){
      print(res.data);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
