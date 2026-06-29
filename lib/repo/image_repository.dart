

import 'dart:convert';

import 'package:flutter_project/models/pixel_ford_image.dart';
import 'package:http/http.dart' as http;

class ImageRepository {
  Future<List<PixelFordImage>> getNetworkImageList() async {

    Uri myApi = Uri.parse("https://pixelford.com/api2/image");
    final res = await http.get(myApi);

    if(res.statusCode == 200){
      final List<dynamic> decodedList = jsonDecode(res.body) as List;

      final List<PixelFordImage> pixelFordImageList = decodedList.map((item) {
        return PixelFordImage.fromJson(item as Map<String, dynamic>);
      }).toList();

      // if (!mounted) return pixelFordImageList;


      return pixelFordImageList;
    }
    else {
      throw Exception("API not found.");
    }

  }

}