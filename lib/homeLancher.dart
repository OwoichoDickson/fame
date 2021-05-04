import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      appBar: AppBar(

        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu,color: Colors.black,),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        elevation: 0,
        title: const Text('Dashboard',


        style: TextStyle(color:Colors.black ),
      ),
        centerTitle:true,
      backgroundColor: Colors.indigo,),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.indigo ,
        items: <Widget> [
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),

        ],

        onTap: (index) {

        },
      ),
      body:  Container(
       // color: Colors.red,

          child: Column(
            children: [
              Container(
                child: Container(

                  alignment: Alignment.topLeft,
                  color: Colors.blue,
                  padding:EdgeInsets.fromLTRB(10, 4, 10, 5),
                  child: Text("Justgetvisible.com",

                  style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  ) ,),
                ),
              ),
              Center(
                child: Row(children: [
                Card(
                child: Column(
                mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('The Enchanted Nightingale'),
                      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('BUY TICKETS'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('LISTEN'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
                ),
                ]
              ),
              )



            ],

          )),

    );
  }


}


