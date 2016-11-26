import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';



@Component(
    selector: 'product-out',
    templateUrl: 'product_out.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductOutComponent {

  ApplicationService applicationService;
  ProductOutComponent(ApplicationService this.applicationService) {}
  void ngAfterViewInit() {}

  List<String> get products => _products;
  String name_product;
  List<Product> listProduct = new List<Product>(); //inicializo la lista de productos

  bool submitted = false;
  bool checkP = false;
  Out out;
  Product product ;
  String name_business;
  String ruc;
  String address;
  String voucher;
  String price_total;

  onSubmit() {
    submitted = true;
  }

  void onCheckProduct(String name) {
    print(name);
    applicationService.getProductByName(name).then((Product product) {
      this.product=product;
      checkP = true;
      if(product!=Null) print(product.nameProduct);
    });
  }

//  void onRegisterOut(String name_business,String ruc,String address, String voucher,String price_total )
//  {
//    String date= "now";
//    String datos=name_business+"-"+ruc+"-"+address+"-"+voucher+"-"+price_total+"-"+date;
//    applicationService.setSale(datos);
//    this.out=out;
//
//  }
  void listProductAdd(){
    this.listProduct.add(product);
  }

  void set data(Product product) {
    this.product = product;
  }
  void set dataOut(Product product) {
    this.out = out;
  }
//  void set precio(){
//    for
//  }
}
