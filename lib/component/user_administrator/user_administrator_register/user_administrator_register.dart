import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';


@Component(
    selector: 'user-administrator-register',
    templateUrl: 'user_administrator_register.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserAdministratorRegister{

  Router router;
  ApplicationService applicationService;
  UserAdministratorRegister(ApplicationService this.applicationService, Router this.router) {}
  User user;

  List<String> type = ['Administrador de Ventas', 'Administrador de Producto'];
  String currentType = 'Tipo de usuario';
  bool added = false;

  String first_name;
  String last_name;
  String email;
  String account;
  String password;
  String user_type;
  int tipo;

  void catchType(String type){
    this.currentType = type;
  }

  void addUser(String first_name,String last_name,String email,String account,String password,String user_type) {
    String datos=first_name+"-"+last_name+"-"+email+"-"+account+"-"+password+"-"+user_type;
    print(datos);
    applicationService.addUser(datos).then((User user) {
    });
    added =true;
  }
}
