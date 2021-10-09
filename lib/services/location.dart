import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {

    // try and catch are used to capture the error .
    try {
      //Position is the data type with something called position.
      // here we use the Geolocator to getCurrentPosition.
      // inside the getCurrentPoistion we add the desiredAccuracy and set the LocationAccuracy like low high  etc.
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude =  position.latitude;
      longitude = position.longitude;

      // just before getting the poistion we have to ask for permission from both android and Ios.
      // The permission method is explained in the geolocator documentation.
      // we have to add some tages in manisfiest.xml and for Ios inside runner adding the tags in info.plist .
      // I hope this will not change in future .haha
    }
    catch(e) {
      print(e);
    }
  }
}