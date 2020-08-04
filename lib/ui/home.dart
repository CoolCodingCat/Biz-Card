import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
      ),
      backgroundColor: Colors.yellow.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      )
    );
  }
  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(55.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent.shade100,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          new BoxShadow(
            color: Colors.black45,
            offset: new Offset(5.0, 5.0),
      )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Lisa Korrigane",
          style: TextStyle(fontSize: 20.9,
          color: Colors.white,
          fontWeight: FontWeight.w500),),
          Text("Développeuse Web"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.alternate_email),
              Text("  lisa@korrigane.dev")
            ],
          )
        ],
      )
    );
    
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width:1.2),
        image: DecorationImage(image: NetworkImage("https://p184.p1.n0.cdn.getcloudapp.com/items/yAubj57p/Lisa%20Korrigane.png?v=085d5b8e795307de85070fe1e58c613d"),
          fit: BoxFit.cover),
        boxShadow: [
          new BoxShadow(
            color: Colors.black45,
            offset: new Offset(5.0, 5.0),
          )
        ]
      )
    );
  }
}
