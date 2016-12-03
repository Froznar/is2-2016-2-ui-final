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

    void onCheckSale(String dateStart,String dateEnd) {
      print(dateStart);
      checkP = true;
      applicationService.getSale(dateStart,dateEnd).then((Sale sale) {
        this.sale=sale;
        if(sale!=Null) print(sale.dateSale);
      });
    }
    onSubmit() {
      checkP = true;
    }

}
