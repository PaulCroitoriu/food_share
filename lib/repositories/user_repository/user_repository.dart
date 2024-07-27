import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_share/repositories/user_repository/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';

@injectable
class UserRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  User? _user;

  User? get user => _user;

  Future<void> fetchUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user != null) {
        final userData = await _firebaseFirestore.collection('users').doc(user.uid).get();
        if (userData.exists) {
          _user = User.fromJson(userData.data()!);
        } else {
          throw Exception('User data not found');
        }
      } else {
        throw Exception('No authenticated user');
      }
    } catch (e) {
      rethrow;
    }
  }
}
