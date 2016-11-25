library logistic_ui.login;
import 'package:angular2/angular2.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';

const List<String> _products = const [
  'ProductoA',
  'ProductoB ',
  'ProductoC',
];

@Component(
    selector: 'product-sales',
    templateUrl: 'product_sales.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductSalesComponent extends AfterViewInit {

  ApplicationService applicationService;
  ProductSalesComponent(ApplicationService this.applicationService) {}
  void ngAfterViewInit() {}

  List<String> get products => _products;
  String name_product;
  List<Product> listProduct = new List<Product>();

  bool submitted = false;
  bool checkP = false;
  Sale sale;
  Product product ;

  //Product model = new Product(1,_products[0],88.3,170,1,2,6556,"01-02-6556");
  //Sale    model1= new Sale(1,"Batman Oscuro",72547290,7987987,"Los Panchitos",0);
  String name_buyer;
  String dni;
  String ruc;
  String address;
  String voucher;
  String price_total;
  onSubmit() {
    submitted = true;
  }
  /*Boton que Verifica los Datos del Producto en la BD*/

  void onCheckProduct(String name) {
    print(name);
    applicationService.getProductByName(name).then((Product product) {
      this.product=product;
      checkP = true;
      if(product!=Null) print(product.nameProduct);
    });
  }
  void onRegisterSale(String name_buyer,String dni,String ruc,String address, String voucher,String price_total )
  {
    String date= "now";
    String datos=name_buyer+"-"+dni+"-"+ruc+"-"+address+"-"+voucher+"-"+price_total+"-"+date;
    applicationService.setSale(datos);
    this.sale=sale;

  }
  void listProductAdd(){
    this.listProduct.add(product);
  }

  void set data(Product product) {
    this.product = product;
  }
  void set dataSale(Product product) {
    this.sale = sale;
  }
}


