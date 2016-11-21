
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';


import 'package:logistic_ui/component/user_product_management/user_product_register/user_product_register.dart';
import 'package:logistic_ui/component/user_product_management/user_product_see_warehouse/user_product_see_warehouse.dart';
import 'package:logistic_ui/component/user_product_management/user_product_provider_register/user_product_provider_register.dart';
import 'package:logistic_ui/component/user_product_management/user_product_type_register/user_product_type_register.dart';


@Component(
    selector: 'user-product-management',
    templateUrl: 'user_product_management.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor,
      UserProductProviderRegister,UserProductRegister,UserProductSeeWarehouse,UserProductTypeRegister],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserProductManagement implements AfterViewInit{

  ApplicationService applicationService;
  ApplicationInfo applicationInfo;// = new ApplicationInfo(name: "DEFAULT APP NAME");
  UserProductManagement(ApplicationService this.applicationService);//, Router this.router);
  Router router;

  @ViewChild(UserProductProviderRegister)
  UserProductProviderRegister userProductProviderRegister;

  @ViewChild(UserProductRegister)
  UserProductRegister userProductRegister;

  @ViewChild(UserProductSeeWarehouse)
  UserProductSeeWarehouse userProductSeeWarehouse;

  @ViewChild(UserProductTypeRegister)
  UserProductTypeRegister userProductTypeRegister;

  var NavBar = 1;

  void ngAfterViewInit() {
    applicationService.getApplicationInfo().then((ApplicationInfo appInfo) {
      applicationInfo = appInfo;
    });
    this.NavBar=1;
  }

  void onSelect(var navBar) {
    NavBar = navBar;
  }


}
