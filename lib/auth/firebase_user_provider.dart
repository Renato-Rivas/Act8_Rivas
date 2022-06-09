import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Act8FirebaseFirebaseUser {
  Act8FirebaseFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Act8FirebaseFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Act8FirebaseFirebaseUser> act8FirebaseFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Act8FirebaseFirebaseUser>(
            (user) => currentUser = Act8FirebaseFirebaseUser(user));
