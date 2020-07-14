import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await OneSignal.shared.postNotification(
            OSCreateNotification(
              playerIds: [controller.userStore.playerId],
              content: 'Teste',
              heading: "Nova mensagem ",
              buttons: [
                OSActionButton(text: "Responder", id: "id2"),
              ],
            ),
          );
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
