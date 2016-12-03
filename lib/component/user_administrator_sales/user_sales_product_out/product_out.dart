import 'package:angular2/angular2.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';



@Component(
    selector: 'product-out',
    templateUrl: 'product_out.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductOutComponent {

  ApplicationService applicationService;
  ProductOutComponent(ApplicationService this.applicationService) {}
  void ngAfterViewInit() {}

  //List<String> get products => products;
  String name_product;
  List<Product> listProduct = new List<Product>(); //inicializo la lista de productos

  bool submitted = false;
  bool checkP = false;
  //Out out;
  Product product ;
  Cliente client;
  Sale sale;

  String name_business;
  String last_name_buyer;
  String dni;
  String ruc;
  String address;
  String voucher;
  String price_total='0.0';
  double price_total1 = 0.0;
  String clientType;

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

  void onRegisterSale(String name_buyer,String ruc,String address, String voucher,String price_total)
  {
    String date= "now";
    String clientType="0";
    String dni="111";
    String last_name_buyer="LastName";
    String datosSale=name_buyer+"-"+dni+"-"+ruc+"-"+address+"-"+voucher+"-"+price_total+"-"+date;
    String datosCliente=name_buyer+"-"+last_name_buyer+"-"+dni+"-"+ruc+"-"+clientType;
    applicationService.setSale(datosSale);
    applicationService.setClient(datosCliente);
    this.sale=sale;
    this.client=client;
  }

  void set dataSale(Sale sale) {
    this.sale = sale;
    print(sale.id);
  }

  void set dataCliente(Cliente client) {
    this.client = client;
    print(client.id);
  }

  void listProductAdd(){
    this.listProduct.add(product);
  }

  void set data(Product product) {
    this.product = product;
  }

  void priceTotal(){
    price_total1=0.0;
    for (int i = 0; i < listProduct.length ; i++) {
      price_total1 = price_total1 + listProduct[i].price;
    }
    this.price_total = price_total1.toString();
  }

}

