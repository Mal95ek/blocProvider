import 'package:firebase_auth/firebase_auth.dart';

class UserReop {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  UserReop(this.firebaseAuth);

  Future<User> signIn(String email, String password) async {
    var auth;
    try {
      var auth = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      e.toString();
    }
    return auth.user;
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    var currentuser = await firebaseAuth.currentUser;
    return currentuser != null;
  }

  Future<User> getcurrentuser() async {
    return await firebaseAuth.currentUser;
  }

  Future<User> signup(String email, String password) async {
    var auth;
    try {
      var auth = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      e.toString();
    }
    return auth.user;
  }
}
