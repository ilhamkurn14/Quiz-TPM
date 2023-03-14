import 'package:flutter/material.dart';
class Layang2 extends StatefulWidget {
 const Layang2({Key? key}) : super(key: key);
 @override
 State<Layang2> createState() => _Layang2State();
}
class _Layang2State extends State<Layang2> {
 @override
 String hasil = '0';
 double diagonal1 = 0;
 double diagonal2 = 0;
 double sisi1 = 0;
 double sisi2 = 0;
 String temp = '0';
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Layang - Layang'),
 ),
 body: SingleChildScrollView(
 child: Padding(
 padding: const EdgeInsets.all(10.0),
 child: Center(
 child: Container(
 width: MediaQuery.of(context).size.width / 2,
 child: Column(
 children: [
 Container(
 child: Text(
 'Luas Layang-Layang',
 style: TextStyle(fontSize: 20),
 ),
 ),
 SizedBox(height: 20),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 diagonal1 = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Diagonal 1",
suffix: Text('cm'),
border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 diagonal2 = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Diagonal 2",
suffix: Text('cm'),
border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 ElevatedButton(
 onPressed: () {
 temp = (0.5 * diagonal1 *
diagonal2).toString();
 setState(() {
 hasil =
double.parse(temp).toStringAsFixed(2);
 });
 },
 child: Text('Hitung Luas'),
 ),
 SizedBox(height: 20),
 Container(
 child: Text(
 'Keliling Layang-Layang',
 style: TextStyle(fontSize: 20),
 ),
 ),
 SizedBox(height: 20),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 sisi1 = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Sisi 1",
suffix: Text('cm'),
border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 sisi2 = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Sisi 2",
suffix: Text('cm'),
border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 ElevatedButton(
 onPressed: () {
 temp = (2 * (sisi1 + sisi2)).toString();
 setState(() {
 hasil =
double.parse(temp).toStringAsFixed(2);
 });
 },
 child: Text('Hitung Keliling'),
 ),
 SizedBox(height: 20),
 Container(
 child: Text(
 'Hasil: ',
 style: TextStyle(fontSize: 20),
 ),
 ),
 SizedBox(height: 10),
 Container(
 child: Text(
 hasil,
 style: TextStyle(fontSize: 40),
 ),
 )
 ],
 ),
 ),
 ),
 ),
 ),
 );
 }
}
