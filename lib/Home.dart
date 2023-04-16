
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isDietCardVisible = false;
  bool _isworkoutcardvisible=false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Meet your mentors",style: TextStyle(fontWeight:FontWeight.w700,fontSize: 17),),
                SizedBox(height: 14),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 66,
                  child: Card(
child: Row(
  children: [Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(foregroundImage:AssetImage("assets/omid-armin-xOjzehJ49Hk-unsplash.jpg"))),

            Column(crossAxisAlignment:CrossAxisAlignment.start,children: [Text("Shweta",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600)),SizedBox(height: 6),Text("IFAA Master",style: TextStyle(fontSize:12,fontWeight: FontWeight.w500))])],
),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Row(
                      children: [Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(foregroundImage:AssetImage("assets/joseph-gonzalez-iFgRcqHznqg-unsplash.jpg")),
                      ),Column(children: [Text("Ninja Dev",style: TextStyle(fontSize:15,fontWeight: FontWeight.w600)),SizedBox(height: 6),Text("IFAA Master",style: TextStyle(fontSize:12,fontWeight: FontWeight.w500))])],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(

                      onPressed: () {
                        // do something when the button is pressed
                      },

                      icon: Icon(Icons.call),
                      label: Text('Schedule a call'),
                      style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.red)),
                    ),
                  ),
                ),
              ],
            ),
          ),


        Container(

          decoration: BoxDecoration(

              borderRadius:BorderRadius.vertical(top:Radius.circular(24)),
          boxShadow: [BoxShadow(
            color: Colors.white,
            offset: Offset(0,0.15),)
          ]
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:16 ),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              SizedBox(height: 21),
            Text("Log your Progress",textAlign:TextAlign.left,style: TextStyle(fontSize:17,fontWeight: FontWeight.w700),),
              SizedBox(height: 20),
              Text("Amet, suspendisse viverra erat aliquam enim quis consequat id molestie."),

              InkWell(
                onTap: ()
                {
                  setState(() {
                    _isDietCardVisible=true;
                  });
                },
                child: Container(
                  height: 42,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  width: MediaQuery.of(context).size.width,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: MediaQuery.of(context).size.height,
                          image: AssetImage("assets/Group.png")),

                      SizedBox(width: 10),
                      Text("Log your diet"),
                    ],
                  ),
                ),
              ),
                  SizedBox(height:10),
                  InkWell(
                    onTap: ()
                    {
                      setState(() {
                        _isworkoutcardvisible=true;
                      });
                    },
                    child: Container(
                      height: 42,
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black)),
                        width: MediaQuery.of(context).size.width,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/Vector-3.png")),
                        SizedBox(width: 10),
                        Text("Log your exercise"),
                      ],
                    )
              ),
                  )
            ],

      ),
          ),
        )
      ]
      ),
        Visibility(
          visible: _isDietCardVisible,
          child: Positioned(
            top:100,
            left:50,
            right:50,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Log your diet",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.15,
                        ),
                        IconButton(onPressed: (){
                          setState(() {
                            _isDietCardVisible=false;
                          });
                        }, icon: Icon(Icons.close))
                      ]
                    ),
                    SizedBox(
                      height: 34.5,
                    ),
                    Text("Your Today's task",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                    SizedBox(height: 16),
                    Text("You need to eat 3 tons of Brokkoli until 6pm. Good Luck"),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:Colors.red),
                      alignment: Alignment.center,
                      height: 54,

                      child: Text("Log your breakfast",style:TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:Colors.red),
                      alignment: Alignment.center,
                      height: 54,

                      child: Text("Log your Lunch",style:TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:Colors.red),
                      alignment: Alignment.center,
                      height: 54,

                      child: Text("Log your Dinner",style:TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w700)),
                    )




                  ],
                ),
              ),
            ),
          ),
        ),
        Visibility(visible: _isworkoutcardvisible,
            child:Positioned(
              top:100,
              left:35,

              child:Card(
                child:Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                          children: [
                            Text("Log your workout",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.15,
                            ),
                            IconButton(onPressed: (){
                              setState(() {
                                _isworkoutcardvisible=false;
                              });
                            }, icon: Icon(Icons.close)),
                          ]
                      ),
                      SizedBox(height: 34.5),
                      Text("Type below what you did today"),
                      SizedBox(height: 20),
                      Container(
                        width: 200,
                        height: 99,
                        child: TextField(

                        ),

                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:Colors.black),
                        alignment: Alignment.center,
                        height: 54,
                        width: 200,

                        child: Text("Submit",style:TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w700)),
                      ),

                    ],
                  ),
                )
              )
            )
        )
    ]
    );
  }
}
