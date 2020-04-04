import 'package:flutter/material.dart';
import 'package:hack_final/datamodels/user_location.dart';
import 'package:provider/provider.dart';

class homePlaceholderWidget extends StatelessWidget {



 @override
 Widget build(BuildContext context) {
   var userLocation = Provider.of<UserLocation>(context);
    return Center(
      child: Text(
          'Location: Lat${userLocation?.latitude}, Long: ${userLocation?.longitude}'),
    );
 }
}