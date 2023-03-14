import 'package:flutter/material.dart';
import 'datadiri.dart';
import 'layanglayang.dart';
import 'segitiga.dart';
class Homepage extends StatefulWidget {
 const Homepage({Key? key}) : super(key: key);
 @override
 State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar:AppBar(
 title: Text('Beranda'),
 ) ,
 body: Center(
child: Image.asset('assets/images/logo.png', width: 500, height: 500),
),
 bottomNavigationBar: BottomNavigationBar(
 onTap: (value) {
 if (value == 0) Navigator.push(context,
MaterialPageRoute(builder: (context)=> Homepage())) ;
 if (value == 1) Navigator.push(context,
MaterialPageRoute(builder: (context)=> Segitiga())) ;
 if (value == 2) Navigator.push(context,
MaterialPageRoute(builder: (context)=> Layang2())) ;
 if (value == 3) Navigator.push(context,
MaterialPageRoute(builder: (context)=> DataDiri())) ;
 },
 items: const <BottomNavigationBarItem>[
 BottomNavigationBarItem(
 icon: Icon(Icons.home),
 label: 'Homepage',
 ),
 BottomNavigationBarItem(
 icon: Icon(Icons.arrow_drop_up_sharp),
 label: 'Segitiga',
 ),
 BottomNavigationBarItem(
 icon: Icon(Icons.layers),
 label: 'Layang-Layang',
 ),
 BottomNavigationBarItem(
 icon: Icon(Icons.person),
 label: 'Profile',
 ),
 ],
 selectedItemColor: Colors.amber[800],
 ),
 );
 }
}
