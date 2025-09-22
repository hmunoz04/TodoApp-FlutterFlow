import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD7wQy3nzJ23Dtw0f8lTl5D59grMAjKv2I",
            authDomain: "todo-6v3cwv.firebaseapp.com",
            projectId: "todo-6v3cwv",
            storageBucket: "todo-6v3cwv.firebasestorage.app",
            messagingSenderId: "398299390303",
            appId: "1:398299390303:web:4ecd78bfa5a72d48a096ea",
            measurementId: "G-C5458HV7EQ"));
  } else {
    await Firebase.initializeApp();
  }
}
