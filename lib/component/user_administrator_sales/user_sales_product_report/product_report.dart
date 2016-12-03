import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';


@Component(
    selector: 'product-report',
    templateUrl: 'product_report.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductReport {
    ApplicationService applicationService;
    ProductReport(ApplicationService this.applicationService) {}

    List<Sale> listSale = new List<Sale>(); //inicializo la lista de ventas
    Sale sale;
    bool checkP = false;
    String dateStart;
    String dateEnd;
    double price_total1;
    String price_total="0.0";

    void onCheckSale(String dateStart,String dateEnd) {
      print(dateStart);
      checkP = true;
      applicationService.getSales(dateStart,dateEnd).then((List<Sale> sales) {
        this.listSale=sales;
        if(sales!=Null) print(sale.dateSale);
      });
    }

    onSubmit() {
      checkP = true;
    }

    void priceTotal(){
      price_total1=0.0;
      for (int i = 0; i < listSale.length ; i++) {
        price_total1 = price_total1 + listSale[i].priceTotal;
      }
      this.price_total = price_total1.toString();
    }

}
