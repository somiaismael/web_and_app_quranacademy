
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'package:googleapis_auth/auth_io.dart' as auth;
// import 'package:googleapis/servicecontrol/v1.dart' as servicecontrol;
// import 'package:flutter/material.dart';
// import 'package:googleapis/authorizedbuyersmarketplace/v1.dart';

// class TestView extends StatelessWidget {
//   const TestView({super.key});

//   @override
//   Widget build(BuildContext context) {

//       Future<String> getAccessToken()async{
//     final serviceAccountJson={
//   "type": "service_account",
//   "project_id": "ecommerce-26c75",
//   "private_key_id": "7f54531ad0908d4f17a5fd61f2cd7929f86c0e09",
//   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCQ1nwekKsIgzAY\nFGnZ6eppgxt3/R9l5d8NKC0VmbpPHisuW3w4RTdQ9XDclFm/+0WPLxzFCwGrJ4w8\nP/6HOV5WcnJYGnUMfmheQaggoPfqkz1ETQtZL23JAghBgvTVr/dD0/2Yv0Kc1T3J\nTAg67qcTVJOfN2QJFcplXovubGMXcF/3OBRRz2oC8mt1UzZksa+Eesh8moClEcPK\nH65XwYHPRUQhXUkYehXeBYDqQiNPshXqK6WDkIFX7hjg9tQ3YhqDJ5HeWceINDKY\nHudZW6qQKUW21Nur3EHU7L937xYHf5cixm5ksaS6pz32qCZQ/FcL7VajIDo30loL\nzz/+Q9CfAgMBAAECggEAJTd33UK/MAjFqupT6LK6kTInNMXN85kFn5PbQdmmjf3q\nipbnbG4csKjgv00/Yp1mWkx40Ajr/NbEqhaniIetPflaeFkUConQt6eXVAsIqTX8\nYDiL2fbd9vCWvn6v+tikaMFoQH+k1jfVEIyA8OOx+r2Y0Siig9Mdlr6cpj8jlznd\n3UfndHP9LVFXpEvkLF7JqfF+5M2s1SHCTJP5F0mhqt+2lhWLbx4qOz/n41xsgAW1\n4tD4LTgEwHw9TTyRdL6GhWLoFXRSdpmJm41/oW9Ccqt2Sdb7gm8gQvQ+lmSI+n3m\nbdE4F7/sEKfbdIuCjSVaehm2onXWZtumu2N+R69bgQKBgQDJ3P4HM8esNAjifnKo\nrb3B6A3OwjYpcXQvASaSoCJoDECub7poYbn4qUHoshC2k0RsDjdcq8doGeMMPN7W\nNv8vZSTTY7Hi4/XgufV9fGZL1MvQJeleze0dJPwtAVgVEhuDjtKyuLXoSGjwWd6h\n0OmcuEOutVuvt1QDiaPbFWBLKQKBgQC3rmNUEwhTIcE0ekobwdprOno4BVvsn8C8\nlBjDfyaQwSw1h52/MuUvq4yyzbbWt4e4kQ6CB5PNGoQ2NgDnudmQsppQp7VFpWYV\ntmg9fWLDw8nNxzOlV9/HYHTds/VD3Jk1VJiNr8DQ/Y4FLzpEw5IvsZuJlUkWpyLM\nXkJapU5+hwKBgAc16qkNM3O2RB77D1NxKVcU1/FrxI2EbPcE3oDcUX5P+buBaDI0\nU3VLbnxGaAxthEMr2tRnmm7ghdi5D+is/D6QKVmXtRH6vJyzZ858tBa/WixsPkLR\nrkedO5jL9H6EMBFp96LEsFLEy2LSgv5avQ2JE3nZJpZHQSwDLaQ0xkTJAoGBAKO7\nRHlmOc540VNpCvRxObTJvLaBOG7V/KVc0jI5/nOcbj8NM3WC9b8niVS9gRUnJklE\nrI0GGh8DWwVD4EyvYxvTyTDKPhDmHfiOz564TTi6JwJSZlwl16lO9v3Fc4TZeIyM\naywplZP14QoIDkXLm1z+Ueozc6JIvAE2qKlKn4yzAoGAdNPmdUQoJkp9J9Pdd5sJ\nWtZ0Jqr6MO+IlpwH8/qV56zNNcRouiPh0T46IqDMiduOgUpjDu2MmfC11T7PLP4v\nR/coSSKl3A7/m1OaBV3sKyMN7wNkYS3RCBm2ZLtEvxB+uEuErsfQrFE+ufQ7CsRk\nh+laMuUkhhm7Y8EQc+VNSsc=\n-----END PRIVATE KEY-----\n",
//   "client_email": "flutter-ecommerce-app@ecommerce-26c75.iam.gserviceaccount.com",
//   "client_id": "101899382813606566446",
//   "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//   "token_uri": "https://oauth2.googleapis.com/token",
//   "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
//   "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-ecommerce-app%40ecommerce-26c75.iam.gserviceaccount.com",
//   "universe_domain": "googleapis.com"
// };

// List<String> scopes=[
//       "https://www.googleapis.com/auth/userinfo.email",
//       "https://www.googleapis.com/auth/firebase.database",
//       "https://www.googleapis.com/auth/firebase.messaging"
// ];


//  http.Client client = await auth.clientViaServiceAccount(
//           auth.ServiceAccountCredentials.fromJson(serviceAccountJson), scopes);


//    //get access token
//     auth.AccessCredentials credentials =
//           await auth.obtainAccessCredentialsViaServiceAccount(
//               auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
//               scopes,
//               client);  

//           client.close();  
//           print(
//           "Access Token: ${credentials.accessToken.data}"); // Print Access Token
//       return credentials.accessToken.data; 
         
//   }
//   ///////////////////////////////////////////////////////////////////////////////////
//  sendNotification() async{
           
//       const String endPointFirebaseCloudMessaging ="https://fcm.googleapis.com/v1/projects/ecommerce-26c75/messages:send";

//       final Map<String, dynamic> message={
//         "message":{
//       "token": "dqCVXQVZTkmJ10viaqpFT0:APA91bFtl7MOI1PWyLq0GJ8kzU3TtBojZ8zYc-52ACYH18N8s4gvV8pud1Ynol1fR04h27nrMT_S4HBcJ_PnHYcOpBxPKBlDj3hdg7C-IBNnbFQqjg4fMKhCx5dKXSbAuFcgcUJpbCTS",
//       "notification":{
//         "body":"This is an FCM notification message!",
//         "title":"FCM Message"
//       }
//    }
//       };

//       final http.Response response= await http.post(
//         Uri.parse(endPointFirebaseCloudMessaging),
//         headers : <String, String>{
//           'Content-Type' :'application/json',
//           'Authorization' :'Bearer ya29.c.c0ASRK0GasAWpFllIJLbzy8oYI_ydFQaD9SRXBgOHe37dHIv6wBKEXJF8mz6LAkKBu4lp9nkECxHD-RPDyDnvChJopyUxKktKfJG4Z0hA3c4hPKHYC-SuFCh0aW4n0beLvuJLgHsugNEcwgFp0gOGn3G0_2RC5xptArINkDVSyuu6b-IEhGY7SMxfzceIgaq-JjZfgzkNad8Me6zAqgBawMdqjrjIwhFeUCAVxuEngf0X8Ta-Ge5Sp3zRDsD-579EZE6kzxWJoKl9spBqqXfAFD6uXv3NU1FUI2FuAa6AxSwOT9xDwE0WDyRsWeiSkSPL1xiSDLwaYPuLzT3MMjB-68O8VVD7mvksk7oWBjX4mpkUZUmVIH_g1kpNOvBhFmAL391KdIRcZaZIqnrlheubbJJ23O2u352Omjur67-OoeJBMoolq0d_kVpWe46SZuQgo7gRB_uQcaxvBupFRvwvSZ4xYkndOQ3z0gbZ-SS8o31ezYF-Yrif-Isc5kmaW2a0ZFUfj70fmBIce-I5_Vpxo6U4e-3h1cFy42von7juifQBl-3XFYXMvM4MZqnhROMawpk3kcg-IM0gap-0m6z2Oj1U_cwUJO75_iZnqxj83MqhuX24B7sxc1B7fsIztVkjZegqn5YFJeM7QhY1BXiR3qzgOnjzxUB6xUed6ux5szUzVFvIO3-JgFujcqrlFt0FpJWXeYohbgoMgpImq2uIzmo3dpvY_4bBmQt7IhamZ5W7qiwWZ2nXaI5JRSjM_26RnIkJi30fXUMS9tQ1uph1gS6Rf4RBhjSjVZZrpJseIYBU41_6dIad38Mz6entVQfr9_4qwks1k-_gIoF8Va4km3JaF3fFmigfuO9bchR7p_-Wd29oI3e__uvjgln1mr1Z9-X4iBkRgfV75bJiqMzjlzie656SW44bF8uv9Om_3Obs73Uglb5JIcvyZgyyZy6q5rWdxJZtgoRtBZ7MlpRYkoyu6ien2QmuS3WjjQ7gy'
//         },
//         body: jsonEncode(message),
//       );


//       if(response.statusCode == 200){
//         print("success");
//       }else{
//         print("faild ${response.statusCode}");
//       }


//   }
//   //////////////////////////////////////////////////////////////////////////////////
//     return Scaffold(
// appBar: AppBar(),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child:Column(
//         children: [
//           MaterialButton(onPressed: (){
//       getAccessToken();
//         },
//         child: Text("getAccessToken"),
//         ),
//              MaterialButton(onPressed: ()async{
              
//    var token=await FirebaseMessaging.instance.getToken();
//    print("_________________________________________________________");
//      print(token);
//         },
//         child: Text("getToken"),
//         ),        
        
//       MaterialButton(onPressed: ()async{
//              await sendNotification();
//         },
//         child: Text("sendNotification"),
//         ),
//             MaterialButton(onPressed: ()async{
//               var topic=await FirebaseMessaging.instance.subscribeToTopic("users");
//                print("_________________________________________________________");
 
//         },
//         child: Text("subscribeToTopic"),
//         ),
//         ],
//       ) 
//       ),
//     );
//   }
// }