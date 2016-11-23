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
    selector: 'product-sales-form',
    templateUrl: 'product_sales_form_component.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductSalesFormComponent extends AfterViewInit {

  ApplicationService applicationService;
  ProductSalesFormComponent(ApplicationService this.applicationService) {}
  void ngAfterViewInit() {}

  List<String> get products => _products;
  bool submitted = false;
  bool checkP = false;
  Product producto = new Product();
  Product product;
  //Product model = new Product(1,_products[0],88.3,170,1,2,6556,"01-02-6556");
  Sale    model1= new Sale(1,"Batman Oscuro",72547290,7987987,"Los Panchitos",0);
  onSubmit() {
    submitted = true;
  }
  /*Boton que Verifica los Datos del Producto en la BD*/

  void onCheckProduct(String name) {
    applicationService.getProductByName(name).then((Product product) {
      this.product=product;
      checkP = true;

    });
  }

}


