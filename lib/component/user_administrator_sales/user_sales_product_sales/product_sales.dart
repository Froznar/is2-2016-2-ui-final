library logistic_ui.login;
import 'package:angular2/angular2.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';

const List<String> _clients = const [
  'Empresa',
  'Usuario ',
];

@Component(
    selector: 'product-sales',
    templateUrl: 'product_sales.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductSalesComponent extends AfterViewInit {

  ApplicationService applicationService;
  ProductSalesComponent(ApplicationService this.applicationService) {}
  void ngAfterViewInit() {}

  List<String> get clients => _clients;
  String name_product;
  List<Product> listProduct = new List<Product>();

  bool submitted = false;
  bool checkP = false;
  Sale sale;
  Product product ;
  Cliente client;
  //Product model = new Product(1,_products[0],88.3,170,1,2,6556,"01-02-6556");
  //Sale    model1= new Sale(1,"Batman Oscuro",72547290,7987987,"Los Panchitos",0);
  String name_buyer;
  String last_name_buyer;
  String dni;
  String ruc;
  String address;
  String voucher;
  String price_total='0.0';
  String client_type;
  double price_total1 = 0.0;

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
  void onRegisterSale(String name_buyer,last_name_buyer,String dni,String ruc,String address, String voucher,String price_total,client_type )
  {
    print(client_type);
    String date= "now";
    String clientType;
    if(client_type[0]=="Usuario")
    {
      clientType="0";
    }
    else
    {
      clientType="1";
    }
    String datosSale=name_buyer+"-"+dni+"-"+ruc+"-"+address+"-"+voucher+"-"+price_total+"-"+date;
    String datosCliente=name_buyer+"-"+last_name_buyer+"-"+dni+"-"+ruc+"-"+clientType;
    applicationService.setSale(datosSale);
    applicationService.setClient(datosCliente);
    this.sale=sale;
    this.client=client;
  }
  void listProductAdd(){
    this.listProduct.add(product);
  }

  void set data(Product product) {
    this.product = product;
  }
  void set dataSale(Sale sale) {
    this.sale = sale;
    print(sale.id);
  }

  void set dataCliente(Cliente client) {
    this.client = client;
    print(client.id);
  }

  void priceTotal(){
    price_total1=0.0;
    for (int i = 0; i < listProduct.length ; i++) {
      price_total1 = price_total1 + listProduct[i].price;
    }
    this.price_total = price_total1.toString();
  }
}


