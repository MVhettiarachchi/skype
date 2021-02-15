import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skype_app/resources/firebase_repository.dart';
import 'package:skype_app/screen/login_screen.dart';
import 'package:skype_app/screen/home_screen.dart';

void main() async {
  // await WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  //final Widget child;
  //const MyApp({Key key,@required this.child}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  //Future<FirebaseApp> _initialization;

   FirebasebaseRepository _repository = FirebasebaseRepository();

  @override
  Widget build(BuildContext context) {
    // FirebaseFirestore.instance.collection("users").doc().set({
    //   "name":"madhu"
    // });
 
   //_repository.signOut();
    return MaterialApp(
      title: "Skype",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FutureBuilder(
          future: _repository.getCurrentUser(),
          builder: (context, AsyncSnapshot<FirebaseUser> snapshot){
            if(snapshot.hasData){
              return HomePage();
            }
            else{
              return LoginScreen();
            }
          },
        ),
      ),
      
    );
  }
}

class HomeScreen {
}