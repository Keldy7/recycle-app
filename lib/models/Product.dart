// class Product {
//   int? id;
//   String? nameproduct;
//   String? quantity;
//   String? price;

//   Product({this.id, this.nameproduct, this.quantity, this.price});

//   Product.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     nameproduct = json['nameproduct'];
//     quantity = json['quantity'];
//     price = json['price'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     data['nameproduct'] = nameproduct;
//     data['quantity'] = quantity;
//     data['price'] = price;
//     return data;
//   }
// }

class Product {
  int? id;
  String? nameproduct;
  String? quantity;
  String? price;

  Product({this.id, required this.nameproduct, required this.price, required this.quantity});

  factory Product.fromMap(Map<String, dynamic> json) => new Product(
        id: json['id'],
        nameproduct: json['nameproduct'],
        quantity: json['quantity'],
        price: json['price'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nameproduct': nameproduct,
      'quantity' : quantity,
      'price' : price,
    };
  }
}