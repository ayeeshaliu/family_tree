import 'dart:html';

import 'package:family_tree/HomeScreenTab/familyRecipe/allFamilyRecipes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // HomeScreen({Key? key, required this.title, required this.icon, required this.image}) : super(key: key);

  //final ImageIcon ?image;

  //



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
            //Text("$title"),
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

  void selectRecipe(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return allFamilyRecipes();
        },
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
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).viewInsets.horizontal + 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: MediaQuery.of(context).viewInsets.top + 40,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      // backgroundImage: AssetImage("assets/images/iconss/bell.png"),
                      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.top + 20,
                ),
                Text(
                  "January 1st, 2020",
                  style: TextStyle(
                      // fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.top + 10,
                ),
                Text(
                  "Welcome back to Family Book",
                  style: TextStyle(
                    // fontFamily: "SourceSansPro",
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Colors.black38,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.top + 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    drawCard(),
                    drawCard(),
                    drawCard(),
                    drawCard(),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.top + 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  height: 260,
                  width: double.infinity,
                  child: Card(
                    elevation: 2.0,
                    color: Colors.white,
                    shadowColor: Color.fromRGBO(184, 184, 184, 1),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).viewInsets.top + 30,
                          left: MediaQuery.of(context).viewInsets.top + 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).viewInsets.right +
                                          15,
                                ),
                                child: Icon(
                                  Icons.cancel_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Invite Family Members",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).viewInsets.top + 15,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, "
                            "consectetur adipiscing elit."
                            "Quis neque mattis ultrices a amet donec mauris."
                            " Ac leo sed aenean nunc. ",
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                              letterSpacing: 1.0,
                              color: Colors.black38,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 5,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).viewInsets.top + 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(255, 212, 96, 1),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Invite Family",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
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
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.top + 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => selectRecipe(context),
                      child: buildFamCard(
                        //AssetImage("assets/images/famcard/cookbook.png"),
                        Text("Family Recipes").toString(),
                        Text("This recipe was developed \ "
                            "by mama in the old days \ "
                            "it is her favourite meal \ "
                            "to cook.")
                            .toString(),
                      ),
                    ),
                    buildFamCard(
                        //AssetImage("assets/images/famcard/history.png"),
                        Text("Family Recipes").toString(),
                      Text("This recipe was developed \ "
                          "by mama in the old days \ "
                          "it is her favourite meal \ "
                          "to cook.")
                          .toString(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.top + 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildFamCard(
                        //AssetImage("assets/images/famcard/medicine.png"),
                        Text("Family Recipes").toString(),
                      Text("This recipe was developed \ "
                          "by mama in the old days \ "
                          "it is her favourite meal \ "
                          "to cook.")
                          .toString(),
                    ),

                    buildFamCard(
                      //AssetImage("assets/images/famcard/religion.png"),
                        Text("Family Recipes").toString(),
                      Text("This recipe was developed \ "
                          "by mama in the old days \ "
                          "it is her favourite meal \ "
                          "to cook.")
                          .toString(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.top + 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildFamCard(
                      //AssetImage("assets/images/famcard/rituals.png"),
                      Text("Family Recipes").toString(),
                      Text("This recipe was developed \ "
                              "by mama in the old days \ "
                              "it is her favourite meal \ "
                              "to cook.")
                          .toString(),
                    ),
                    buildFamCard(
                      //Image("assets/images/famcard/tradition.png"),
                      Text("Family Recipes").toString(),
                      Text("This recipe was developed \ "
                              "by mama in the old days \ "
                              "it is her favourite meal \ "
                              "to cook.")
                          .toString(),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).viewInsets.top + 500,
                //   child: GridView(
                //     children:
                //       CardDetails.map((cardData) => buildFamCard(
                //           cardData.image,
                //           cardData.title,
                //           cardData.description)).toList(),
                //
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //         childAspectRatio: 2/4,
                //         mainAxisExtent: 300,
                //         crossAxisSpacing: 20,
                //         mainAxisSpacing: 20,
                //       ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}


class famCard{
  //final ImageData ?image;
  final String title;
  final String description;

  const famCard({  required this.title, required this.description});

}

const CardDetails = [
   famCard (
     //image: "assets/images/famcard/cookbook.png",
     title: "Family Recipes",
     description: "In this section, you add all your family's generational recipes."
  ),

  famCard (
    //image: "assets/images/famcard/cookbook.png",
      title: "Family History",
      description: "Get acquainted with the members of your family and past achievements"
  ),

  famCard (
    //image: "assets/images/famcard/cookbook.png",
      title: "Family Religion",
      description: "Find out what religion your family practise."
  ),

  famCard (
   // image: "assets/images/famcard/cookbook.png",
      title: "Festive Traditions",
      description: "Memorize important dates for festivities within the family."
  ),

  famCard (
    //image: "assets/images/famcard/cookbook.png",
      title: "Natural Medicine",
      description: "Documented family remedies and herbs."
  ),

  famCard (
    //image: "assets/images/famcard/cookbook.png",
      title: "Family Rituals",
      description: "Get informed on the cultures and rituals of the family."
  ),
];


class buildFamCard extends StatelessWidget {
  //final String ?image;
  final String title;
  final String description;

  buildFamCard( this.title, this.description);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      width: 158,
      child: Card(
        elevation: 2.0,
        child: Column(
          children: [
            SizedBox(height: 30,),
            //Image.asset(image!),
            Text(title),
            SizedBox(height: 20,),
            Text(description),
          ],
        ),
      ),
    );
  }
}


