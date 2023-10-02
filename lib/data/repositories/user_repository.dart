
import 'package:bellboy_rider/domain/entities/user.dart';

class UserRepository {
  Future<User> getUserByEmail(String email) async {
    // fetching user data from an API will be done here
    await Future.delayed(Duration(seconds: 1)); // let's delay for simulation
    return User(email);
  }
}
