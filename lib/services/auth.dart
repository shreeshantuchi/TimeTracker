import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User? get currentUser;
  Future<User?> signInAnonymously();
  void signOut();
}

class Auth implements AuthBase {
  final auth = FirebaseAuth.instance;
  @override
  User? get currentUser => auth.currentUser;

  @override
  Future<User?> signInAnonymously() async {
    final userCredential = await auth.signInAnonymously();
    return userCredential.user;
  }

  @override
  void signOut() async {
    await auth.signOut();
  }
}
