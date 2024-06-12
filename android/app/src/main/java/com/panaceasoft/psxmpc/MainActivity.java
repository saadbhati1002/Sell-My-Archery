package com.sellmyarchery.customer;

import io.flutter.embedding.android.FlutterFragmentActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin;
import com.google.firebase.appcheck.FirebaseAppCheck;
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin.NativeAdFactory;

public class MainActivity extends FlutterFragmentActivity {
    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
      super.configureFlutterEngine(flutterEngine);
      final NativeAdFactory factory = new NativeAdFactoryExample(getLayoutInflater());
      GoogleMobileAdsPlugin.registerNativeAdFactory(flutterEngine, "adFactoryExample", factory);
    }
  
    @Override
    public void cleanUpFlutterEngine(FlutterEngine flutterEngine) {
      GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "adFactoryExample");
    }
    //   @override fun onCreate(savedInstanceState Bundle?) {
    //     FirebaseApp.initializeApp(/*context=*/ this);
    //     val firebaseAppCheck = FirebaseAppCheck.getInstance();
    //     firebaseAppCheck.installAppCheckProviderFactory(
    //             DebugAppCheckProviderFactory.getInstance());
    //     super.onCreate(savedInstanceState);
    // }
}

