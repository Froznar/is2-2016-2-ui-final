library logistic_ui.login;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';


import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/component/home/home.dart';
import 'package:logistic_ui/component/signup/signup.dart';

@Component(
    selector: 'login',
    templateUrl: 'login.html',
    directives: const [ROUTER_DIRECTIVES],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])



class Login extends AfterViewInit {

  Router router;
  Login(Router this.router) {}
  void ngAfterViewInit() {
    this.router.parent.navigate(['Home']);
  }
}
