
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService{
  late SharedPreferences sharedPreferences;

  Future<MyServices> init() async{
    // await Firebase.initializeApp();
    sharedPreferences =await  SharedPreferences.getInstance();
    return this;
  }

}

intialServices() async{
  await Get.putAsync(()=> MyServices().init());
}