import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'shared/stores/user_store.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserStore userStore = Modular.get();
    OneSignal.shared.init(
      "4b13c87a-ca44-4400-9f90-398f60b4cc54",
      iOSSettings: {
        OSiOSSettings.autoPrompt: false,
        OSiOSSettings.inAppLaunchUrl: false,
      },
    );
    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);

    // Ao criar a instancia (que deve acontecer apenas uma vez)
    // o sistema ja deve guardar o playerID do OneSignal

    OneSignal.shared.getPermissionSubscriptionState().then((status) {
      var playerId = status.subscriptionStatus.userId;
      debugPrint('PllayerID: $playerId');
      userStore.playerId = playerId;
    });

    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
