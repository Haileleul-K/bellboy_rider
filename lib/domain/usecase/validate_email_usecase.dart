import 'package:bellboy_rider/domain/entities/user.dart';
import 'package:get/get.dart';


class ValidateEmailUseCase {
  RxBool validateEmail(User user) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(user.email).obs;
  }
}