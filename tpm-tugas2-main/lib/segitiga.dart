import 'package:flutter/material.dart';
class Segitiga extends StatefulWidget {
 const Segitiga({Key? key}) : super(key: key);
 @override
 State<Segitiga> createState() => _SegitigaState();
}
class _SegitigaState extends State<Segitiga> {
 @override
 String hasil = '0';
 double alas = 0;
 double tinggi = 0;
 double sisi1 = 0;
 double sisi2 = 0;
 double sisi3 = 0;
 String temp = '0';
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Segitiga'),
 ),
 body: Padding(
 padding: const EdgeInsets.all(10.0),
 child: Center(
 child: Container(
 width: MediaQuery.of(context).size.width / 2,
 child: Column(
 children: <Widget>[
 Text('Luas Segitiga', style: TextStyle(fontSize:
20),),
 SizedBox(height: 20,),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 alas = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Alas",
 suffix: Text('cm'),
 border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 tinggi = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Tinggi",
 suffix: Text('cm'),
 border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 ElevatedButton(
 onPressed: () {
 temp = (0.5 * alas * tinggi).toString();
 setState(() {
 hasil =
double.parse(temp).toStringAsFixed(2);
 });
 },
 child: Text('Hitung Luas'),
 ),
 SizedBox(height: 20),
 Text('Keliling Segitiga', style:
TextStyle(fontSize: 20),),
 SizedBox(height: 20,),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 sisi1 = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Sisi Pertama",
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
 labelText: "Masukkan Sisi Kedua",
 suffix: Text('cm'),
 border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 TextFormField(
 onChanged: (txt) {
 setState(() {
 sisi3 = double.parse(txt);
 });
 },
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 labelText: "Masukkan Sisi Ketiga",
 suffix: Text('cm'),
 border: new OutlineInputBorder(
 borderRadius: new
BorderRadius.circular(10.0))),
 ),
 SizedBox(height: 20),
 ElevatedButton(
 onPressed: () {
 temp = (sisi1 + sisi2 + sisi3).toString();
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
 'Hasil : ',
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
 );
 }
}
