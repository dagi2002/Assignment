  import 'package:flutter/material.dart';
  import '_categories.dart';
  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});



    class HomePage extends StatefulWidget {
      @override
      _HomePageState createState() => _HomePageState();
    }

  class _HomePageState extends State<HomePage> {
    List<String> _categories = ['Starters', 'Main Course', 'Desserts'];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
       appBar: AppBar(
          title: Text('German Restaurant'),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: _categories.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(_categories[index]),
                  onTap: () {
                  // Navigate to the menu screen for the selected category
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
