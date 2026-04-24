import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAUb-hxtr6gP_kg_MbeoM0quj9jF7wrHto",
            authDomain: "ptm-3a51-tve3us.firebaseapp.com",
            projectId: "ptm-3a51-tve3us",
            storageBucket: "ptm-3a51-tve3us.firebasestorage.app",
            messagingSenderId: "512901085033",
            appId: "1:512901085033:web:2a6ac5184d29d13b046ff8"));
  } else {
    await Firebase.initializeApp();
  }
}
