import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      backgroundColor: Colors.white,),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget> [
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),

        ],

        onTap: (index) {

        },
      ),
      body:  Container(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(child: Text("Justgetvisible.com",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ) ,)),
              ),
              SafeArea(child: Column(
                children: [
                  Row(

                    children: [
                      Container(
                        color: Colors.black,
                      ),
                      Card(
                        color: Colors.black,
                      ),
                      Card(),
                    ],

                  )
                ],
              ))
            ],

          )),

    );
  }


}


