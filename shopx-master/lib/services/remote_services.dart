import 'package:http/http.dart' as http;
import 'package:shopx/models/blush_model.dart';
import 'package:shopx/models/bronzer_model.dart';
import 'package:shopx/models/eyebrow_model.dart';
import 'package:shopx/models/eyeliner_model.dart';
import 'package:shopx/models/eyeshadow_model.dart';
import 'package:shopx/models/foundation_model.dart';
import 'package:shopx/models/lip_liner_model.dart';
import 'package:shopx/models/lipstick_model.dart';
import 'package:shopx/models/mascara_model.dart';
import 'package:shopx/models/nail_polish_model.dart';
import 'package:shopx/models/product_model.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<BlushModel>> fetchBlush() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=blush'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return blushModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<BronzerModel>> fetchBronzer() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=bronzer'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return bronzerModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<EyebrowModel>> fetchEyebrow() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=eyebrow'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return eyebrowModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<EyelinerModel>> fetchEyeliner() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=eyeliner'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return eyelinerModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<EyeshadowModel>> fetchEyeshadow() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=eyeshadow'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return eyeshadowModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<FoundationModel>> fetchFoundation() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=foundation'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return foundationModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<LipLinerModel>> fetchLipLiner() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=lip_liner'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return lipLinerModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<LipstickModel>> fetchLipstick() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=lipstick'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return lipstickModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<MascaraModel>> fetchMascara() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=mascara'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return mascaraModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<NailPolishModel>> fetchNailPolish() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=nail_polish'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return nailPolishModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List<ProductsModel>> fetchProduct() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productsModelFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
