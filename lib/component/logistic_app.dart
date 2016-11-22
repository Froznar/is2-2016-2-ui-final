library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:logistic_ui/providers.dart';

import 'package:logistic_ui/component/login/login.dart';

import 'package:logistic_ui/component/user_product_management/index/user_product_management.dart';
import 'package:logistic_ui/component/user_administrator/index/user_administrator_management.dart';
import 'package:logistic_ui/component/user_administrator_sales/index/user_administrator_sales.dart';
import 'package:logistic_ui/component/footer_panel.dart';


@Component(
    selector: 'logistic-app',
    templateUrl: 'logistic_app.html',
    directives: const [ROUTER_DIRECTIVES,FooterPanel],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])


@RouteConfig( const [
  const Route(path: '/login', component: Login, name: 'Login', useAsDefault:  true),
  const Route(path: '/userproductmanagement', component: UserProductManagement, name: 'UserProductManagement'),
  const Route(path: '/useradministrator', component: UserAdministratorManagement, name: 'UserAdministratorManagement'),
  const Route(path: '/useradministratorsales', component: UserAdministratorSales, name: 'UserAdministratorSales'),
])

class LogisticApp implements AfterViewInit {

  Router router;
  LogisticApp(Router this.router) {}

  void ngAfterViewInit() {

  }

}



