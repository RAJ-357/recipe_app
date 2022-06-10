// ignore_for_file: non_constant_identifier_names

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

  String title = "";

    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      appBar: AppBar(
          backgroundColor : const Color(0xFFD83457),
          centerTitle: true,
          title: const Text("RECIPE - APP",style: TextStyle(color: Colors.white,fontSize: 25),)
      ),
      body: ListView(
        children: [
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/american.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            onPressed: () {
              title = "american";
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(cuisine: title ,)
              )
              );
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/chinese.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            onPressed: () {
              title = "chinese";
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(cuisine: title,)
              )
              );
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/french.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            onPressed: () {
              title = "french";
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(cuisine: title,)
              )
              );
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/german.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            onPressed: () {
              title = "german";
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(cuisine: title,)
              )
              );
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/indian.jpg'),
                    fit: BoxFit.fitWidth),
              ),
            ),
            onPressed: () {
              title = "indian";
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(cuisine: title,)
              )
              );
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/italian.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            onPressed: () {
              title = "italian";
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(cuisine: title,)
              )
              );
            },
          ),
          const SizedBox(height: 35,),
        ],

      ),
    );
  }
}

int idNum = 0;

class SecondPage extends StatefulWidget {
  final String cuisine;
  const SecondPage({Key? key,required this.cuisine,}) : super(key: key);
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  Map idMap =

  {
    "american":
    [
      {
        "id": 715594,
        "title": "Homemade Garlic and Basil French Fries",
        "image": "https://spoonacular.com/recipeImages/715594-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 715424,
        "title": "The Best Chili",
        "image": "https://spoonacular.com/recipeImages/715424-636x393.jpg",
        "imageType": "jpg",
        "duration": 130,
      },
      {
        "id": 642540,
        "title": "Falafel Burgers",
        "image": "https://spoonacular.com/recipeImages/642540-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 646512,
        "title": "Salmon Caesar Salad",
        "image": "https://spoonacular.com/recipeImages/646512-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 1046982,
        "title": "How to Make the Perfect Sweet Potato Sloppy Joes",
        "image": "https://spoonacular.com/recipeImages/1046982-636x393.jpg",
        "imageType": "jpg",
        "duration": 40,
      }
    ],
    "chinese":
    [
      {
        "id": 716426,
        "title": "Cauliflower, Brown Rice, and Vegetable Fried Rice",
        "image": "https://spoonacular.com/recipeImages/716426-636x393.jpg",
        "imageType": "jpg",
        "duration": 30,
      },
      {
        "id": 644826,
        "title": "Gluten Free Dairy Free Sugar Free Chinese Chicken Salad",
        "image": "https://spoonacular.com/recipeImages/644826-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 716311,
        "title": "Mango Fried Rice",
        "image": "https://spoonacular.com/recipeImages/716311-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 660231,
        "title": "Skinny Veggie Fried Rice",
        "image": "https://spoonacular.com/recipeImages/660231-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 663150,
        "title": "Thai Savory Brown Fried Rice",
        "image": "https://spoonacular.com/recipeImages/663150-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      }
    ],

    "french":
    [
      {
        "id": 633754,
        "title": "Baked Ratatouille",
        "image": "https://spoonacular.com/recipeImages/633754-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 640693,
        "title": "Creamy Ratatouille Over Penne",
        "image": "https://spoonacular.com/recipeImages/640693-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 657933,
        "title": "Ratatouille Pasta",
        "image": "https://spoonacular.com/recipeImages/657933-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 662291,
        "title": "Sun-Dried Tomato and Leek Quiche",
        "image": "https://spoonacular.com/recipeImages/662291-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 658641,
        "title": "Roasted Ratatouille Gratin",
        "image": "https://spoonacular.com/recipeImages/658641-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      }
    ],

    "german":
    [
      {
        "id": 656817,
        "title": "Pork Schnitzel And Apple Salad",
        "image": "https://spoonacular.com/recipeImages/656817-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 1096208,
        "title": "Spinach Goats Cheese Roulade Main Dish",
        "image": "https://spoonacular.com/recipeImages/1096208-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 649183,
        "title": "Lamb and Fresh Goat Cheese Roulade",
        "image": "https://spoonacular.com/recipeImages/649183-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 644482,
        "title": "German Meatloaf Falscher Hase",
        "image": "https://spoonacular.com/recipeImages/644482-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 638493,
        "title": "Chicken/sweet Potato Roulade With Goat Cheese Sauce",
        "image": "https://spoonacular.com/recipeImages/638493-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      }
    ],

    "indian":
    [
      {
        "id": 798400,
        "title": "Spicy Black-Eyed Pea Curry with Swiss Chard and Roasted Eggplant",
        "image": "https://spoonacular.com/recipeImages/798400-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 646043,
        "title": "Gujarati Dry Mung Bean Curry",
        "image": "https://spoonacular.com/recipeImages/646043-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 716364,
        "title": "Rice and Peas with Coconut Curry Mackerel",
        "image": "https://spoonacular.com/recipeImages/716364-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 660290,
        "title": "Slow Cooker Lamb Curry",
        "image": "https://spoonacular.com/recipeImages/660290-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 641122,
        "title": "Curry Leaves Potato Chips",
        "image": "https://spoonacular.com/recipeImages/641122-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      }
    ],

    "italian":
    [
      {
        "id": 715769,
        "title": "Broccolini Quinoa Pilaf",
        "image": "https://spoonacular.com/recipeImages/715769-636x393.jpg",
        "imageType": "jpg",
        "duration": 30,
      },
      {
        "id": 715495,
        "title": "Turkey Tomato Cheese Pizza",
        "image": "https://spoonacular.com/recipeImages/715495-636x393.jpg",
        "imageType": "jpg",
        "duration": 15,
      },
      {
        "id": 715573,
        "title": "Simple Skillet Lasagna",
        "image": "https://spoonacular.com/recipeImages/715573-636x393.jpg",
        "imageType": "jpg",
        "duration": 35,
      },
      {
        "id": 659109,
        "title": "Salmon Quinoa Risotto",
        "image": "https://spoonacular.com/recipeImages/659109-636x393.jpg",
        "imageType": "jpg",
        "duration": 45,
      },
      {
        "id": 648279,
        "title": "Italian Tuna Pasta",
        "image": "https://spoonacular.com/recipeImages/648279-636x393.jpg",
        "imageType": "jpg",
        "duration": 20,
      }
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor : const Color(0xFFD83457),
          centerTitle: true,
          title: Text(widget.cuisine.toUpperCase(),style: const TextStyle(color: Colors.white,fontSize: 25),)
      ),
      body:
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                idNum = idMap[widget.cuisine][index]["id"];
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ThirdPage()
                )
                );
              },
              child: Column(children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(idMap[widget.cuisine][index]["image"]),
                  ),
                  title: Text(idMap[widget.cuisine][index]["title"],style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Image.network(idMap[widget.cuisine][index]["image"]),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Icon(Icons.access_time,size: 35,),
                          const SizedBox(width: 10),
                          Text("${idMap[widget.cuisine][index]["duration"]} minutes",style: const TextStyle(fontSize: 20),),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Icon(Icons.assignment,size: 35,),
                          SizedBox(width: 10),
                          Text("Tap on food for detail",style: TextStyle(fontSize: 20),),
                        ],
                      )
                    ],
                  ),
                ),
                Container(height: 30, color: const Color(0xFF2B2B2B),),
              ]),
            );
          },
          itemCount: 5,
        ),
      );
    }
}

const apikey = '03612722289d4bc9967a6f4574a232a6';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key,}) : super(key: key);
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  String q = 'https://spoonacular.com/recipeImages/$idNum-636x393.jpg';

  //String joke = '';
  int no_of_ingredients = 0;
  int no_of_steps = 0;
  List<String> D = [];
  List<String> E = [];

  void getIngredients() async{
    var i = await http.get(Uri.parse('https://api.spoonacular.com/recipes/$idNum/ingredientWidget.json?apiKey=$apikey'));
    List ingResults = json.decode(i.body)['ingredients'];

    setState(() {
      no_of_ingredients = (ingResults.length);

      for (int a = 0; a < no_of_ingredients; a++) {
        String nameOfIngredient = ingResults[a]['name'];
        double amountOfIngredient = ingResults[a]['amount']['metric']['value'];
        String unitOfIngredient = ingResults[a]['amount']['metric']['unit'];
        String f = '$nameOfIngredient $amountOfIngredient$unitOfIngredient';
        D.add(f);
      }
    });
  }

  void getSteps() async{

    var s = await http.get(Uri.parse('https://api.spoonacular.com/recipes/$idNum/analyzedInstructions?apiKey=$apikey'));
    List stepResults = json.decode(s.body)[0]['steps'];

    setState(() {
      no_of_steps = (stepResults.length);
      for(int a = 0; a < no_of_steps; a++)
      {
        String Steps = stepResults[a]['step'];
        E.add(Steps);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0.0,
      ),
      backgroundColor: const Color(0xFF2B2B2B),
      body: Column(
        children: [
          Center(
            child: Stack(
              children: <Widget>[
                Image.network(q,
                  height:  MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            height: 40,
            color: const Color(0xFFD83457),
            child: Row(
              children: [
                const SizedBox(width: 15,),
                const Text("Ingredients - ",style: TextStyle(color: Colors.cyanAccent, fontSize: 20,fontWeight: FontWeight.bold),),
                const Spacer(),
                const Icon(Icons.assignment,color: Colors.white,size: 35,),
                const SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){
                    getIngredients();
                  },
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent),
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF4D4F5C)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                //side: const BorderSide(color: Color(0xFF4D4F5C)),
                              )
                          )
                      ),child: const Text("GET INFO",style: TextStyle(color: Colors.green,),)),
                const SizedBox(width: 15,),
              ],
            ),
          ),
          const Divider(),
          Expanded(child: ListView(
            children: [
              for(var p in D)
                ListTile(
                  leading: const Icon(
                    Icons.cookie_outlined,
                    size: 20,
                    color: Colors.brown,
                  ),
                  title:Text(p, style: const TextStyle(color: Colors.amber, fontSize: 17,fontWeight: FontWeight.bold),
                  ),
                )
            ],
          ),),
          const Divider(),
          Container(
            height: 40,
            color: const Color(0xFFD83457),
            child: Row(
              children: [
                const SizedBox(width: 15,),
                const Text("Steps - ",style: TextStyle(color: Colors.cyanAccent, fontSize: 20,fontWeight: FontWeight.bold),),
                const Spacer(),
                const Icon(Icons.assignment,color: Colors.white,size: 35,),
                const SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){
                    getSteps();
                  },
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent),
                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF4D4F5C)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              //side: const BorderSide(color: Color(0xFF4D4F5C)),
                            )
                        )
                    ), child: const Text("GET INFO",style: TextStyle(color: Colors.green,),),
                  ),
                const SizedBox(width: 15,),
              ],
            ),
          ),
          const Divider(),
          Expanded(child: ListView(
            children: [
              for(var q in E)
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xFFD83457),
                    child: Text(q[0]),
                  ),
                  title:Text(q, style: const TextStyle(color: Colors.amber, fontSize: 17,fontWeight: FontWeight.bold),
                  ),
                  /*trailing: Checkbox(checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: false,
                      onChanged:(bool? value){
                        setState((){
                          value = value;
                        });
                      }
                  ),*/
                ),
            ],
          )),
          //Text(joke,style: TextStyle(color: Colors.white38, fontSize: 10),)
        ],
      ),
    );

  }
}



