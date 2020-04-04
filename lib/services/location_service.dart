import 'dart:async';

import 'package:hack_final/datamodels/user_location.dart';
import 'package:location/location.dart';

class LocationService {
  //keeping track of current location
  UserLocation _currentLocation;
  Location location = Location();

  //Continuously emit location updates
    StreamController<UserLocation> _locationController =
      StreamController<UserLocation>.broadcast();

  LocationService(){
    location.requestPermission().then((granted){
      //changes made here, if doesnt work just remove this and try
      if(granted != null){

        location.onLocationChanged().listen((locationData){
          if(locationData!=null){

            _locationController.add(UserLocation(latitude:locationData.latitude,longitude:locationData.longitude));

          }
        });

      }

    });
  }
  Stream<UserLocation> get locationStream => _locationController.stream;
  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );
    } on Exception catch (e) {
      print('Could not get location: ${e.toString()}');
    }

    return _currentLocation;
  }
}