import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final ThemeData theme = ThemeData();
    return MaterialApp(

        title: 'German Restaurant',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.grey,
            secondary: Colors.black,
          ),
        ),
      home: categoriesCard());

  }
}

class categoriesCard extends StatelessWidget {
  const categoriesCard({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: const Text("Menu - Categories",
        style: TextStyle(
          color: Colors.black54,
        )),
        backgroundColor: Colors.white12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: [
            Card(
              surfaceTintColor: Colors.white12,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Column(
                children:  [
                  Image.network("https://images.squarespace-cdn.com/content/v1/59fc723aa8b2b08256276cb1/1585547242207-781KACCVVC299TILFMZM/German+Dumplings+–+Knödeln%C2%A0.jpg?format=1000w"),
                  const Text("Main dishes",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    backgroundColor: Colors.white12
                  ),)
                ],

              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Column(
                children:  [
                  Image.network("https://www.billyparisi.com/wp-content/uploads/2021/08/fries-1.jpg"),
                  const Text("Side dishes",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),)
                ],

              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Column(
                children:  [
                  Image.network("https://assets3.thrillist.com/v1/image/1693021/828x610/flatten;crop;webp=auto;jpeg_quality=60.jpg"),
                  const Text("Drinks",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),)
                ],

              ),
            ),
          ],
        ),







          ),







    );
}


}