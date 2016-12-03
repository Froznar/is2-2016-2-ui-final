library logistic_ui.user_product_register;
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';


import 'package:logistic_ui/providers.dart';

import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';



@Component(
    selector: 'user-product-provider-register',
    templateUrl: 'user_product_provider_register.html',
    directives: const[ROUTER_DIRECTIVES],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserProductProviderRegister{
  Router router;
  ApplicationService applicationService;
  UserProductProviderRegister(ApplicationService this.applicationService, Router this.router) {}
  UserProvider provider;
  String userAccount;
  String name;
  String ruc;
  String address;
  String email;
  String phone;

void ngAfterViewInit() {}
    void addProviders(String name,String ruc,String address,String email,String phone) {
	String datos=name+"-"+ruc+"-"+address+"-"+email+"-"+phone;
	applicationService.addProvider(datos).then((UserProvider provider) {
    });
  }
}
