
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    // to make a network request all we have is to call the http.get and then add in the url that we have to fetch data from.
    http.Response response = await http.get(Uri.parse(url),);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    } else {
      print(response.statusCode);
    }
  }
}

//