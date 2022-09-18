import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
),
); //runApp
//the scaffold widget provides a basic skeleton for our app like an app bar, floating action buttons etc
//name of widget always starts with an upper case letter

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tourist Attraction'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child:const Icon(
                  Icons.thumb_up,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 14,
              ),
              FloatingActionButton(
                child:const Icon(
                  Icons.thumb_down,
                ),
                onPressed: () {},
              ),
            ]
        ),

        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text('Gardens By The Bay',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,

                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.network('https://pbs.twimg.com/media/DeB72b0WkAAWdTt?format=jpg&name=900x900'),
            const SizedBox(
              height:30,

            ),
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Center(
                child: Text("Visiting the place is altogether a different experience that you will never forget about. It's a great place to take a leisurely walk with your beloved or click some pictures against the stunning backdrop of the natural attractions here for your Instagram profile. While it looks amazing in the daylight, it turns even more magical after sunset when it's all lit up in colorful lights!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),

              ),
            ),
          ],
        ),
      drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Settings'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('About'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
    ),
    );





  }
}