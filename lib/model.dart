library logistic_ui.model;

import 'package:dartson/dartson.dart';
import 'package:intl/intl.dart';

@Entity()
class ApplicationInfo {
  String name;
  String version;
  ApplicationBuildInfo buildInfo;
  ApplicationInfo({this.name, this.version, this.buildInfo});
}

@Entity()
class ApplicationBuildInfo {
  static final DateFormat _formatter = new DateFormat("yyyy-MM-dd HH:mm:ss");
  String revision;
  String branch;
  DateTime buildTime;
  String get formattedBuildTime => _formatter.format(buildTime);
  int get year => buildTime.year;
  ApplicationBuildInfo({this.revision, this.branch, this.buildTime});
}

@Entity()
class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String get name => "$firstName $lastName";
}

@Entity()
class Product
{
  int id;
  String nameProduct;
  double price;
  int stock;
  int grupo;
  int subgrupo;
  int codItem;
  String codigo;
  Product(this.id, this.nameProduct, this.price, this.stock, this.grupo,this.subgrupo, this.codItem, this.codigo);
}

@Entity()
class ProductOut
{
  String name;
  int quantity;
  String receiver;
  String phone;
  ProductOut(this.name, this.quantity, this.receiver, this.phone);

}

@Entity()
class Sale {
  int id;
  String nameBuyer;
  int DNI;
  int RUC;
  String address;
  String voucher;
  List<Product> listProduct;
  int priceTotal;
  DateTime dateSale;
  String get data => "$nameBuyer $DNI $RUC $address $priceTotal";
  Sale(this.id,this.nameBuyer,this.DNI,this.RUC,this.address,this.priceTotal);
}
