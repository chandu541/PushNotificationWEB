
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';


class PushNotifications {
  static final _firebaseMessaging = FirebaseMessaging.instance;
 

  // request notification permission
  static Future init() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );
  }

  // get the fcm device token
  static Future getDeviceToken({int maxRetires = 3}) async {
    try {
      String? token;
      if (kIsWeb) {
        // get the device fcm token
        token = await _firebaseMessaging.getToken(
            vapidKey:
                "BMFq2APtsv8zIamafzc34unABpCxe7_ZomnXe_HjlCSlnkxw m03ioc4lkTG6Qnasc pihttps://github.com/chandu541/PushNotificationWEB.gitoqfOugChmxMOm_ElczuIVBV5WR02wDQad8p3i7yxEK0");
        print("for web device token: $token");
      } else {
        // get the device fcm token
        token = await _firebaseMessaging.getToken();
        print("for android device token: $token");
      }
     
      return token;
    } catch (e) {
      print("failed to get device token");
      if (maxRetires > 0) {
        print("try after 10 sec");
        await Future.delayed(Duration(seconds: 10));
        return getDeviceToken(maxRetires: maxRetires - 1);
      } else {
        return null;
      }
    }
  }

  
  
}
