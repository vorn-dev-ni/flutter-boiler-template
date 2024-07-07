import 'package:flutter/cupertino.dart';

class GlobalApp {



  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Other plugin to init
    // Example Firebase, Payment Stripe, Notification...
  }
}