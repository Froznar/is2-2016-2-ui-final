library logistic_ui.login;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';


import 'package:logistic_ui/providers.dart';

@Component(
    selector: 'login',
    templateUrl: 'login.html',
    directives: const [ROUTER_DIRECTIVES],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])



class Login extends AfterViewInit {

  Router router;
  Login(Router this.router) {}
  void ngAfterViewInit() {}

  void fun1() {
    this.router.parent.navigate(['UserProductManagement']);
  }
  void fun2() {
    this.router.parent.navigate(['UserAdministratorManagement']);
  }
  void fun3() {
    this.router.parent.navigate(['UserAdministratorSales']);
  }
}
