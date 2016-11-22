
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';


import 'package:logistic_ui/component/user_administrator_sales/user_sales_product_out/product_out.dart';
import 'package:logistic_ui/component/user_administrator_sales/user_sales_product_report/product_report.dart';
import 'package:logistic_ui/component/user_administrator_sales/user_sales_sales/product_sales.dart';
import 'package:logistic_ui/component/user_administrator_sales/user_sales_sales_report/sales_report.dart';

@Component(
    selector: 'user-administrator-sales',
    templateUrl: 'user_administrator_sales.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor,
      ProductOutComponent, ProductReport, ProductSalesComponent, SalesReport],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserAdministratorSales implements AfterViewInit {

  ApplicationService applicationService;
  ApplicationInfo applicationInfo = new ApplicationInfo(name: "Blazing Box");
  UserAdministratorSales(ApplicationService this.applicationService);//, Router this.router);
  Router router;

  @ViewChild(ProductOutComponent)
  ProductOutComponent productOutComponent;

  @ViewChild(ProductReport)
  ProductReport productReport;

  @ViewChild(ProductSalesComponent)
  ProductSalesComponent productSalesComponent;

  @ViewChild(SalesReport)
  SalesReport salesReport;

  var NavBar = 1;

  void ngAfterViewInit() {
    applicationService.getApplicationInfo().then((ApplicationInfo appInfo) {
      applicationInfo = appInfo;
    });
    print(65);
    this.NavBar=1;
  }

  void onSelect(var navBar) {
    NavBar = navBar;
  }


}
