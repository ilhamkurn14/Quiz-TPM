import 'package:flutter/material.dart';
import 'homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Homepage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
 const MyHomePage({Key? key}) : super(key: key);
 @override
 State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text(''),
 ),
 );
 }
}
class ThemeClass{
 static ThemeData lightTheme = ThemeData(
 scaffoldBackgroundColor: Colors.red,
 colorScheme: ColorScheme.light(),
 appBarTheme: AppBarTheme(
 backgroundColor: Colors.white
 )
 );
 static ThemeData darkTheme = ThemeData(
 scaffoldBackgroundColor: Colors.grey,
 colorScheme: ColorScheme.dark(),
 appBarTheme: AppBarTheme(
 backgroundColor: Colors.black54,
 )
 );
}

