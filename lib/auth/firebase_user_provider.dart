import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class Rougesteakhouse4cad8FirebaseUser {
  Rougesteakhouse4cad8FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Rougesteakhouse4cad8FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Rougesteakhouse4cad8FirebaseUser>
    rougesteakhouse4cad8FirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<Rougesteakhouse4cad8FirebaseUser>(
          (user) {
            currentUser = Rougesteakhouse4cad8FirebaseUser(user);
            if (!kIsWeb) {
              FirebaseCrashlytics.instance.setUserIdentifier(user?.uid ?? '');
            }
            return currentUser!;
          },
        );
