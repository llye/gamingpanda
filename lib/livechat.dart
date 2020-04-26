import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamingpanda/global.dart';

class livechatpage extends StatefulWidget {
  @override
  _livechatpageState createState() => _livechatpageState();
}

class _livechatpageState extends State<livechatpage> {

   TextEditingController chatcontroll = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppbarforchat,
      body: Column(
        children: <Widget>[
          Expanded(child: ListView(reverse: true,
            children: <Widget>[


              Row(
                children: <Widget>[
                  Container(height: 30,width: 30,margin: EdgeInsets.only(left: 20,top: 15,bottom: 10),
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image:AssetImage('assets/images/user.png'),
                          )
                      )
                  ),
                  Card(
                      elevation: 5,color: Global.whitepanda,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(18),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(24)),

                        /* side: BorderSide(width: 1, color: Colors.green)*/),


                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("kad si slobda za game",style: TextStyle(
                            fontSize: 13,color: Global.blackpanda
                        ),),
                      )),
                ],
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("utrok 22:59",style: TextStyle(color: Global.greypanda),),
                ],
              ),


              Row(crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Card(
                      elevation: 5,color: Global.orangepanda,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(18),
                            topLeft: Radius.circular(18)),

                        /* side: BorderSide(width: 1, color: Colors.green)*/),


                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("kad si slobda za game",style: TextStyle(
                            fontSize: 13,color: Global.whitepanda
                        ),),
                      )),
                ],
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("petak 00:35",style: TextStyle(color: Global.greypanda),),
                ],
              ),


            ],
          ),),
          SizedBox(height: 10,),
          Container(
    child: Row(
            children: <Widget>[


    // Text input
    Flexible(
    child: Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 0,top: 0),
      child: Container(
      child:TextField(
        style: TextStyle(color: Global.orangepanda),

        controller: chatcontroll,
        keyboardType: TextInputType.text,

        decoration: InputDecoration(
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),

            borderSide:  BorderSide(color:Global.greypandaicon, width: 2.0),

          ) ,

          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),

            borderSide:  BorderSide(color: Colors.grey, width: 0.0),

          ),

          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              style: BorderStyle.solid,

            ),

          ),

          filled: true,

          contentPadding: EdgeInsets.only(left: 8,right: 8,top: 0,bottom: 0),

          fillColor: Global.greypandaicon.withOpacity(0.3),

        ),

      ),
      ),
    ),

    ),

Padding(
  padding: const EdgeInsets.only(right: 10),
  child:   Icon(Icons.send,color: Global.orangepanda,size: 34,),
),
    // Send Message Button

    ],
    ),

          ),],
      ));
    }
}



