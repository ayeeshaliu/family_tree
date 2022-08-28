import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  // final String title;
  // final IconData icon;
  //
  //  HomeScreen(this.title, this.icon);

  Widget famCard(){
    return Container(
      height: 290,
      width: 180,
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        shadowColor: Color.fromRGBO(184, 184, 184, 1),
        child: Column(
          children: [
            // Text("$title"),
            // Icon(icon),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Widget drawCard() {
    return Container(
      height: 80,
      width: 80,
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        shadowColor: Color.fromRGBO(184, 184, 184, 1),
        child: Column(
          children: [
            // Text("$title"),
            // Icon(icon),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery
                .of(context)
                .viewInsets
                .horizontal + 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 40,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person, color: Colors.black,),
                      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    ),

                    CircleAvatar(
                      child: Icon(Icons.notifications, color: Colors.black,),
                      // backgroundImage: AssetImage("assets/images/iconss/bell.png"),
                      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 20,),
                Text("January 1st, 2020",
                  style: TextStyle(
                    // fontFamily: "SourceSansPro",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0
                  ),
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 10,),
                Text("Welcome back to Family Book",
                  style: TextStyle(
                    // fontFamily: "SourceSansPro",
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Colors.black38,
                    letterSpacing: 1.0,
                  ),
                ),

                SizedBox(height: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    drawCard(),

                    drawCard(),

                    drawCard(),

                    drawCard(),
                  ],
                ),

                SizedBox(height: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 25,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  height: 260,
                  width: double.infinity,
                  child: Card(
                    elevation: 2.0,
                    color: Colors.white,
                    shadowColor: Color.fromRGBO(184, 184, 184, 1),
                    child: Padding(
                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top  + 30, left: MediaQuery.of(context).viewInsets.top  + 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 15, ),
                                child: Icon(Icons.cancel_outlined, size: 30,),
                              ),
                            ],
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Invite Family Members",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: 1.0,
                            ),
                            ),
                          ],
                        ),

                          SizedBox(height: MediaQuery
                              .of(context)
                              .viewInsets
                              .top + 15,),

                      Text(
                        "Lorem ipsum dolor sit amet, "
                          "consectetur adipiscing elit."
                          "Quis neque mattis ultrices a amet donec mauris."
                          " Ac leo sed aenean nunc. " ,
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 14,
                          letterSpacing: 1.0,
                          color: Colors.black38,
                        ),
                        overflow: TextOverflow.clip,
                        maxLines: 5,

                      ),

                          SizedBox(height: MediaQuery
                              .of(context)
                              .viewInsets
                              .top + 25,),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Container(
                            child: ElevatedButton(
                            onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(255, 212, 96, 1),),

                      ),
                      child: Center(
                        child: Text("Invite Family", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black,
                        ),),
                      ),
                  ),
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
              ],
            ),

            ],
          ),
                    ),
    ),
    ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 25,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    famCard(),
                    famCard(),
                  ],
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    famCard(),
                    famCard(),
                  ],
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .viewInsets
                    .top + 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    famCard(),
                    famCard(),
                  ],
                ),
              ],

    ),
    ),
        ],
      ),
    );
    }
}