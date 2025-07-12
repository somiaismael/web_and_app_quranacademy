import 'package:brra/core/class/statusrequest.dart';

handlingData(response){
  if(response is StatusRequesrt){
    return response;
  }else{
    return StatusRequesrt.success;
  }

}