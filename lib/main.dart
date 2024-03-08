
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'App Development',
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.cyan,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.comment),
          tooltip: 'Comment Icon',
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings),
          tooltip: 'Setting Icon',
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text('MY FIRST APP'),
        centerTitle: true,
        titleSpacing: 00.0,
        toolbarHeight: 60,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )
        ),
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.people),
            label: 'profile',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'setting',
            ),
        ],

        ),
        body:/*Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.all(20),
          alignment: Alignment.topRight,
          padding: const EdgeInsets.all(20),
          transform: Matrix4.rotationZ(0.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.cyan,
          ),
          child: const Text('MASHKOOR'),
        ),*/
        RichText(
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
          maxLines: 1,
          textScaleFactor: 1,
          softWrap: true,
          text:  TextSpan(
            text: 'hello world',style: DefaultTextStyle.of(context).style,
            children: const [
              TextSpan(
                text: 'hello world',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)
              ),
            ],
          ),

        ),
       drawer: Drawer(
         child: ListView(
           children: const [
             DrawerHeader(
                 decoration: BoxDecoration(
                   color: Colors.black12,
                 ),
                 child: UserAccountsDrawerHeader(
                   decoration: BoxDecoration(
                     color: Colors.cyan,
                   ),
                   accountName: Text('MASHKOOR'), accountEmail: Text('MASHKOOR@GMAIL.COM'),
               currentAccountPictureSize: Size.square(50),
                   currentAccountPicture: CircleAvatar(
                     backgroundColor: Colors.white,
                     child: Text('MAS'),
                   ),
             )),
             ListTile(
               leading: Icon(Icons.icecream),
               title: Text('HOME'),
             )
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         elevation: 10.0,
         child: const Icon(Icons.mic),
         onPressed: () {  },),
      ),
    );
  }
}

