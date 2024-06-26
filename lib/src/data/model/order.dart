import 'package:simple/src/data/model/address.dart';
import 'package:simple/src/data/model/cart.dart';
// ignore: unused_import
import 'package:simple/src/data/model/product.dart';

class Order {
  String? id;
  String? createAt;
  String? total;
  List<Cart>? listItemCart;
  Address? address;
  String? orderNumber;


  Order({this.id, this.createAt, this.total, this.listItemCart, this.address,
      this.orderNumber});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['createAt'];
    total = json['total'];
    listItemCart = json['listItemCart'];
    address = json['address'];
    orderNumber = json['orderNumber'];
  }

}
