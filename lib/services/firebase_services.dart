import 'package:chat_app/headers.dart';

class FirebaseServices {
  FirebaseServices._();
  static final instance = FirebaseServices._();

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPassword({
    required email,
    required password,
  }) async {
    try {
      UserCredential credential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      Logger().e('signInWithEmailAndPassword error: $e');
      return null;
    }
  }

  Future<User?> anonymousSignIn() async {
    try {
      UserCredential credential = await auth.signInAnonymously();
      return credential.user;
    } catch (e) {
      Logger().e('anonymousSignIn error: $e');
      return null;
    }
  }
}
