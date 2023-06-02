import "package:http/http.dart" as http;

import "package:kafechi/model/products_model.dart";

class ProductService {
  Future<List<Product>> getProductsFromAPI() async {
    const url = "https://json.xstack.ir/api/v1/products";
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final products = productsFromJson(response.body);
      return products.data;
    }
    return [];
  }
}
