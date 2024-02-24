 import 'package:dio/dio.dart';
class DioHelper{
  static Dio? dio;//? to be nullable

   static init(){
    dio=Dio(
        BaseOptions(
       baseUrl: 'https://www.goldapi.io/api/' ,
       receiveDataWhenStatusError :true,
        )//BaseOption
    );
        }
  static  Future<Response> getData(String url){
       dio!.options.headers={
         'x-access-token':'goldapi-1cnxerlsz6twab-io',
     };
       return dio!.get(url);
     }
  }//Dio
