import 'package:flutter/material.dart';
import 'package:hack_final/services/location_service.dart';
import 'package:hack_final/views/home_view.dart';
import 'package:provider/provider.dart';

import 'datamodels/user_location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return StreamProvider<UserLocation>(
          create: (context)=>LocationService().locationStream,
          child: MaterialApp(title: 'Flutter Demo', home: Home())
      
      
    );
  }
}

