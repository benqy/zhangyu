import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zhangyu/constants/apis.dart';

class OCR {
  //丈育
  // appid: 23678249
  // api key : FMOvy6HAumhIhX7mDirxf9Pb
  //secretKey: Ep4RnLqEyXqHtf8vjsfKezalWdaXmE2l
  static String accessToken = '';

  static Future<void> initToken() async {
    var res = await Dio().post(API.baiduGetToken, queryParameters: {
      'grant_type': 'client_credentials',
      'client_id': 'FMOvy6HAumhIhX7mDirxf9Pb',
      'client_secret': 'Ep4RnLqEyXqHtf8vjsfKezalWdaXmE2l'
    });
    accessToken = res.data['access_token'];
    print(accessToken);
  }

  static Future<String> generalBasic() async {
    var option = Options(
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        sendTimeout: 3000,
        receiveTimeout: 6000);
    var picker = ImagePicker();
    var file = await picker.getImage(source: ImageSource.gallery);
    var fileData = await file.readAsBytes();
    var base64 = base64Encode(fileData);
    // print(base64);
    var encodeStr = Uri.encodeComponent(base64);
    var res = await Dio().post(API.baiduOCR, 
      data: 'image=$encodeStr&detect_direction=true',
      queryParameters: {
        'access_token': accessToken
      },
      options: option
    );
    print(res);
    var str = '';
    res.data['words_result'].forEach((item){
      print(item['words']);
      str +=item['words'];
    });
    return str;
  }
}
