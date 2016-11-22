
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

import 'package:logistic_ui/component/footer_panel.dart';
import 'package:logistic_ui/component/user_administrator/user_administrator_modify/user_administrator_modify.dart';
import 'package:logistic_ui/component/user_administrator/user_administrator_register/user_administrator_register.dart';

@Component(
    selector: 'user-administrator-management',
    templateUrl: 'user_administrator_management.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor,
      UserAdministratorModify,UserAdministratorRegister,FooterPanel],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserAdministratorManagement implements AfterViewInit {

  ApplicationService applicationService;
  ApplicationInfo applicationInfo = new ApplicationInfo(name: "Blazing Box");
  UserAdministratorManagement(ApplicationService this.applicationService);//, Router this.router);
  Router router;

  @ViewChild(UserAdministratorModify)
  UserAdministratorModify userAdministratorModify;

  @ViewChild(UserAdministratorRegister)
  UserAdministratorRegister userAdministratorRegister;

  @ViewChild(FooterPanel)
  FooterPanel footerPanel;

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
