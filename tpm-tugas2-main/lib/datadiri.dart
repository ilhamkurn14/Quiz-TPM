import 'package:flutter/material.dart';
class DataDiri extends StatefulWidget {
 const DataDiri({Key? key}) : super(key: key);
 @override
 State<DataDiri> createState() => _DataDiriState();
}
class _DataDiriState extends State<DataDiri> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 backgroundColor: Colors.grey,
 appBar: AppBar(
 title: Text('Profile'),
 backgroundColor: Colors.black54,
 elevation: 0,
 ),
 //bagian user
 body: Column(
 mainAxisAlignment: MainAxisAlignment.start,
 crossAxisAlignment: CrossAxisAlignment.center,
 children: <Widget>[
 Row(
 children: <Widget>[
 Padding(
 padding: const EdgeInsets.only(left: 180.0,top:20,),
child: CircleAvatar(
 radius: 70,
backgroundImage:
AssetImage('images/fotomahasiswa.png'),
 ),
 ),
 ],
 ),
 SizedBox(height: 20,),
 Padding(padding: EdgeInsets.only(top: 30, right: 20, left: 50,
bottom: 10),
 child: Text ('Biodata Mahasiswa', style:
TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color:
Colors.white)),
 ),
 //bagian autobiography
 SingleChildScrollView(
 child: Container(
 padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 4.0),
 margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 4.0),
 height: 400,
 width: double.infinity,
 child: Card(
 child: Container(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.start,
mainAxisSize: MainAxisSize.max,
crossAxisAlignment: CrossAxisAlignment.start,
 children: <Widget>[
 Padding(
 padding:const EdgeInsets.all(15.0),
child:Row(
 children: <Widget>[
 Icon(Icons.person),
Text( 'Nama : Ilham Kurniawan Adi',
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
)
 ]
 ),
 ),
 Padding(
 padding:const EdgeInsets.all(15.0),
child:Row(
 children: <Widget>[
 Icon(Icons.format_list_numbered),
Text('NIM : 123200067', style:
TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
 )
 ]
 ),
 ),
Padding(
 padding:const EdgeInsets.all(15.0),
child:Row(
 children: <Widget>[
 Icon(Icons.class_),
Text('Kelas : IF - D', style:
TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
 )
 ]
 ),
 ),
Padding(
 padding:const EdgeInsets.all(15.0),
child:Row(
 children: <Widget>[
 Icon(Icons.sports_basketball_sharp),
Text('Hobi : Ngopi', style:
TextStyle(fontWeight: FontWeight.bold, fontSize:18)
 )
 ]
 ),
 ),
 ],
 )
 ),
 ),
 ),
 )
 ],
 ),
 );
 }
}
