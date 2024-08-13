import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDIjvLk4dFLdOANs3nv8TE8tqWi_RXPhGE",
            authDomain: "chargespot-27e1e.firebaseapp.com",
            projectId: "chargespot-27e1e",
            storageBucket: "chargespot-27e1e.appspot.com",
            messagingSenderId: "392941641231",
            appId: "1:392941641231:web:d91cef7111dd47481acd7a",
            measurementId: "G-K3M6DC9LX9"));
  } else {
    await Firebase.initializeApp();
  }
}
