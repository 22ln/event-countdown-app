import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';
import 'views/event_home_page.dart';
import 'view_models/event_view_model.dart'; // Import your EventViewModel

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Set this to true to enable device preview
      builder: (context) => ChangeNotifierProvider(
        create: (_) => EventViewModel(), // Provide the EventViewModel here
        child: EventCountdownApp(),
      ),
    ),
  );
}

class EventCountdownApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Event Countdown',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black87, fontFamily: 'Poppins'),
          bodyText2: TextStyle(color: Colors.black54, fontFamily: 'Poppins'),
        ),
      ),
      home: EventHomePage(),
      builder: DevicePreview.appBuilder,
    );
  }
}
