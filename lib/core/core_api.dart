import 'dart:convert';
import 'package:dartz/dartz.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:rive_animation/core/seveics.dart';
import 'package:rive_animation/core/state.dart';




MyServices myServices = Get.find();
String _basicAuth=
    'Basic ${base64Encode(utf8.encode('dddd:sdfsdfsdfsdfdsf'))}';

Map<String,String> _myheader={
  'authorization':_basicAuth
};

class Crud {

  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {

    // controller_grant.grant_users();


      // if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      // print(myServices.sharedPreferences.getString("username")!);
      print("omarasxxzsefra222f");
      print(data);
      print(response.statusCode) ;
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("omarasxxzsefra111f");

        Map responsebody =await  jsonDecode(response.body);

        print(responsebody) ;
        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
      // } else {
      //   return const Left(StatusRequest.offlinefailure);
      // }



  }
  Future<Either<StatusRequest, Map>> postData_grant(String linkurl, Map data) async {

    var response = await http.post(Uri.parse(linkurl), body: data);

    print(response.statusCode) ;

    if (response.statusCode == 200 || response.statusCode == 201) {

      Map responsebody = jsonDecode(response.body);

      print(responsebody) ;

      return Right(responsebody);
    } else {
      return const Left(StatusRequest.serverfailure);
    }
  }



  Future<Either<StatusRequest,Map>> addRequestWithImageOne(
      url,data ,
      [String ? namerequest]) async {
    if(namerequest==null){
      namerequest="files";
    }
    var uri =Uri.parse(url);
    var request=http.MultipartRequest("POST",uri);
    request.headers.addAll(_myheader);


    data.forEach((key,value){
      request.fields[key]=value;


    });

    var myrequest=await request.send();
    var response=await http.Response.fromStream(myrequest);
    if(response.statusCode==200||response.statusCode==201) {
      print(response.body);
      Map responsebody = jsonDecode(response.body);
      return Right(responsebody);
    }
    else {
      return const Left(StatusRequest.serverfailure);
    }
  }


}


