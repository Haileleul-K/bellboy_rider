import 'package:bellboy_rider/data/repositories/user_repository.dart';
import 'package:bellboy_rider/domain/entities/user.dart';
import 'package:bellboy_rider/domain/usecase/validate_email_usecase.dart';
import 'package:get/get.dart';



class LoginController extends GetxController {
  final Rx<User> user = User('').obs;
  final RxBool isEmailValid = false.obs;
  final UserRepository userRepository = UserRepository();

  void setEmail(String value) {
    user.value = User(value);
    validateEmail();
  }

  void validateEmail() async {
    final isValid = ValidateEmailUseCase().validateEmail(user.value);
    isEmailValid.value = isValid.value;

    if (isValid.value) {
      final fetchedUser = await userRepository.getUserByEmail(user.value.email);
      print('Fetched User: ${fetchedUser.email}');
    }
  }
}
