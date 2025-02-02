
import 'package:firebase_auth/firebase_auth.dart';
import 'package:skype_app/resources/firebase_methods.dart';

class FirebasebaseRepository{
  FirebaseMethods _firebaseMethods = FirebaseMethods();

  Future<FirebaseUser> getCurrentUser() => _firebaseMethods.getCurrentUser();

  Future<FirebaseUser> signIn() => _firebaseMethods.signIn();

  Future<bool> authenticateUser(FirebaseUser user) => 
  _firebaseMethods.authenticateUser(user);

  Future<void> addDataToDb(
    FirebaseUser user) => _firebaseMethods.addDataToDb(user);
Future<void> signOut() => _firebaseMethods.signOut();

}


