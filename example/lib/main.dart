import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'features.dart';

void main() {
  /// Ensures channels are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  /// Lets the app view initializes only after getting configs.
  ///
  /// (hotfix) See: flutter/lib/src/rendering/binding.dart
  /// ```
  // void initPersistentFrameCallback() {
  //   addPersistentFrameCallback(_handlePersistentFrameCallback);
  // }
  RendererBinding.instance.initPersistentFrameCallback();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Select',
      home: Features(),
    );
  }
}
