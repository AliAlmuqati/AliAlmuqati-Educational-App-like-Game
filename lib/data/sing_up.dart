
import '../core/core_api.dart';
import '../linkapi.dart';
class SignupData {
  Crud crud;
  SignupData(this.crud);

  postdata(String username ,String password ,String email ) async {

    var response = await crud.postData(AppLink.signUp, {
      "user_name" : username ,
      "users_password" : password  ,
      "user_email" : email,

    });
    return response.fold((l) => l, (r) => r);
  }




}
