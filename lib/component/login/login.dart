library logistic_ui.login;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';


import 'package:logistic_ui/providers.dart';

import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';

@Component(
    selector: 'login',
    templateUrl: 'login.html',
    directives: const [ROUTER_DIRECTIVES],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])


class Login extends AfterViewInit {
  Router router;
  ApplicationService applicationService;
  Login(ApplicationService this.applicationService, Router this.router) {}

  User user;
  String userAccount;
  String userPassword;
  int userType = 0;

  void ngAfterViewInit() {}
  void checkUser(String account, String password) {
    applicationService.getUserByAccount(account).then((User user) {
      if (user.password == userPassword) {
        this.user = user;
        this.userType = user.user_type;
        if (this.userType == 1) {
          this.router.parent.navigate(['UserProductManagement']);
        }
        if (this.userType == 2) {
          this.router.parent.navigate(['UserAdministratorManagement']);
        }
        if (this.userType == 3) {
          this.router.parent.navigate(['UserAdministratorSales']);
        }
      }
    });
  }
}
