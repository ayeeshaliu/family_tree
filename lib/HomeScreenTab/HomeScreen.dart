import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  // final String title;
  // final IconData icon;
  //
  //  HomeScreen(this.title, this.icon);

  Widget drawCard() {
    return Container(
      height: 80,
      width: 80,
      child: Card(
        shadowColor: Color.fromRGBO(184, 184, 184, 1),
        child: Column(
          children: [
            // Text("$title"),
            // Icon(icon),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
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
                ),
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .viewInsets
                  .top + 10,),
              Text("Welcome back to Family Book",
                style: TextStyle(
                  // fontFamily: "SourceSansPro",
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
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
                height: 300,
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top  + 40, left: MediaQuery.of(context).viewInsets.top  + 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Invite Family Members",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),),
                        ],
                      ),

                        SizedBox(height: MediaQuery
                            .of(context)
                            .viewInsets
                            .top + 5,),

                    Text(
                      "Lorem ipsum dolor sit amet, "
                        "consectetur adipiscing elit."
                        "Quis neque mattis ultrices a amet donec mauris."
                        " Ac leo sed aenean nunc. " ,
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.clip,
                      maxLines: 5,
                    ),

                        SizedBox(height: MediaQuery
                            .of(context)
                            .viewInsets
                            .top + 15,),

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
                        ),
            ],
          ),

          ],
        ),
                  ),
    ),
    )
    ],

    ),
    ),
      ),
    );
    }
}