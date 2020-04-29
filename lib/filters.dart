import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;


import 'global.dart';

class filteritem extends StatefulWidget {
  @override
  _filteritemState createState() => _filteritemState();
}

class _filteritemState extends State<filteritem> {

  List<String> listitems = ['A', 'B', 'C', 'D'];

  double start=5,end;

  var _currentSelectedItemserver;

  var _currentSelectedItemrank;

  var _currentSelectedItemcountry;

  var _currentSelectedItemgame;



  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Global.isSwitchedFT == true
          ? Global.blackpanda
          : Global.whitepanda,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
          child: Column(children: <Widget>[
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CustomText(text:"Filters",
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ,),

              ],
            ),
            SizedBox(height: 10,),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CustomText(text:"I am looking for:",
                  fontSize:12,
                ),
              ],
            ),
SizedBox(height: 10,),
            Container(

              decoration: BoxDecoration(
                border: Border.all(
                  color: Global.greypandaicon,

                ),

                borderRadius: BorderRadius.all(Radius.circular(30.0)),

              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DropdownButton(hint: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: CustomText(text:"Game",fontSize: 12,),
                    ),underline: SizedBox(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color:Global.orangepanda,
                          size: 20.09,
                        ),
                      ),
                      isExpanded: true,
                      items: listitems.map((val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CustomText(text:val,fontSize: 12,),
                          ),
                        );
                      }).toList(),
                      value: _currentSelectedItemgame,
                      onChanged: (value) {
                        setState(() {
                          _currentSelectedItemgame = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            //drowndown3

            Container(

              decoration: BoxDecoration(
                border: Border.all(
                  color: Global.greypandaicon,

                ),

                borderRadius: BorderRadius.all(Radius.circular(30.0)),

              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DropdownButton(hint: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: CustomText(text:"Server",fontSize: 12,),
                    ),underline: SizedBox(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color:Global.orangepanda,
                          size: 20.09,
                        ),
                      ),
                      isExpanded: true,
                      items: listitems.map((val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CustomText(text:val,fontSize: 12,),
                          ),
                        );
                      }).toList(),
                      value: _currentSelectedItemserver,
                      onChanged: (value) {
                        setState(() {
                          _currentSelectedItemserver = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            //dropdown4
            Container(

              decoration: BoxDecoration(
                border: Border.all(
                  color: Global.greypandaicon,

                ),

                borderRadius: BorderRadius.all(Radius.circular(30.0)),

              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DropdownButton(hint: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: CustomText(text:"Rank",fontSize: 12),
                    ),underline: SizedBox(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color:Global.orangepanda,
                          size: 20.09,
                        ),
                      ),
                      isExpanded: true,
                      items: listitems.map((val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CustomText(text:val,fontSize: 12),
                          ),
                        );
                      }).toList(),
                      value: _currentSelectedItemrank,
                      onChanged: (value) {
                        setState(() {
                          _currentSelectedItemrank = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            //dropdown5
            Container(

              decoration: BoxDecoration(
                border: Border.all(
                  color: Global.greypandaicon,

                ),

                borderRadius: BorderRadius.all(Radius.circular(30.0)),

              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DropdownButton(hint: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: CustomText(text:"Country",fontSize: 12,),
                    ),underline: SizedBox(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color:Global.orangepanda,
                          size: 20.09,
                        ),
                      ),
                      isExpanded: true,
                      items: listitems.map((val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CustomText(text:val,fontSize: 12),
                          ),
                        );
                      }).toList(),
                      value: _currentSelectedItemcountry,
                      onChanged: (value) {
                        setState(() {
                          _currentSelectedItemcountry = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CustomText(text:"Age",

                    fontSize: 12
                ,),
              ],
            ),

Row(
  children: <Widget>[
    Container(
        decoration: BoxDecoration(

          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Global.greypandaicon)

        ),

        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
          child: CustomText(text:start.toInt().toString(),fontSize: 13,),
        )),

        Expanded(
          child: Theme(
            data: ThemeData(backgroundColor:Global.darkBlue),
            child: Slider(

      value: start,
     onChanged: (values){

            start =values;

            setState(() {

            });
     },
      min: 0,
      max: 100,
              activeColor: Global.orangepanda,
              inactiveColor: Global.blackpanda,



    ),
          ),
        ),
  ],
),
            Padding(
              padding: const EdgeInsets.only(left: 3),

              child:   Row(children: <Widget>[

                CustomText(text:"Gender",fontSize: 12.5,),

                Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  activeColor: Global.orangepanda,
                  onChanged: (val) {

                    print("Radio $val");

                    setSelectedRadio(val);

                  },

                ),

                new CustomText(text:'Male',fontSize: 12),

                Radio(

                  value: 2,

                  groupValue: selectedRadio,

                  activeColor: Global.orangepanda,

                  onChanged: (val) {

                    print("Radio $val");

                    setSelectedRadio(val);

                  },

                ),

                new CustomText(text:'Female',fontSize: 12),

                Radio(

                  value: 3,

                  groupValue: selectedRadio,

                  activeColor: Global.orangepanda,

                  onChanged: (val) {

                    print("Radio $val");

                    setSelectedRadio(val);

                  },

                ),

                new CustomText(text:'Unknown',fontSize: 12),

              ],),


            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Expanded(child: customraisedbutton(text: "SAVE",bgclr: Global.orangepanda,clr: Global.whitepanda,)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Expanded(child: customraisedbutton(text: "BACK",bgclr: Global.orangepanda,clr: Global.whitepanda,)),
              ],
            )
          ],),
        ),
      ),
    );
  }
}
