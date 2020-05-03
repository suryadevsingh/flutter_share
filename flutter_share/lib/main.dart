import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:share/share.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  @override
  DemoAppState createState() => DemoAppState();
}

class DemoAppState extends State<DemoApp> {
  String text = 'https://medium.com/@suryadevsingh24032000';
  String subject = 'follow me';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share Plugin Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Share Plugin Demo'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 24.0)),
                Builder(
                  builder: (BuildContext context) {
                    return RaisedButton(
                      child:  Text('Share'),
                      onPressed: ()
                                    {
                                      final RenderBox box = context.findRenderObject();
                                      Share.share(text,
                                          subject: subject,
                                          sharePositionOrigin:
                                          box.localToGlobal(Offset.zero) &
                                          box.size);
                                    },
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}