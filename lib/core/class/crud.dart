import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:brra/core/class/statusrequest.dart';
import 'package:brra/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequesrt, Map>> postRequest(
      String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return const Left(StatusRequesrt.serverfailure);
        }
      } else {
        return const Left(StatusRequesrt.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequesrt.serverException);
    }
  }
}
