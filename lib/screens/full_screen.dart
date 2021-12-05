import 'package:active_ecommerce_flutter/app_config.dart';
import 'package:flutter/material.dart';





class FullScrren extends StatefulWidget {
  List s;
  int i;
  FullScrren(this.s,this.i);

  @override
  _LoginState createState() => _LoginState(s,i);
}

class _LoginState extends State<FullScrren> {
  List s;
  int i;
  _LoginState(this.s,this.i);




  @override
  void initState() {
    print("${AppConfig.BASE_PATH}${s[i]}");


  }

  @override
  void dispose() {


    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    final _screen_height = MediaQuery.of(context).size.height;
    final _screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Image"),
      ),
      backgroundColor: Colors.white,
      body:PageView.builder(
        itemCount: s.length,
        controller: PageController(initialPage: i, keepPage: true, viewportFraction: 1),
        itemBuilder: (BuildContext context, int itemIndex) {
          return Center(
              child: InteractiveViewer(
              minScale: 0.2,
              maxScale:100.2 ,
              child:Image.network("${AppConfig.BASE_PATH}${s[itemIndex]}"),

          ),
          );
        },
      ), );
  }
}
