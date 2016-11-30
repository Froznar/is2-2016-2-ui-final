
import 'dart:async';
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



class UserAdministratorRegister implements OnInit{

  ApplicationService applicationService;

  Router router;
  UserAdministratorRegister(ApplicationService this.applicationService) {}
  List<User> users;
  User user;

  bool added = false;
  String first_name;
  String last_name;
  String email;
  String account;
  String password;
  String user_type;
  int tipo;

  Future<Null> getUsers()  async {
    users = await applicationService.getUsers();
  }

  void ngOnInit() {
    getUsers();
  }


  void addUser(String first_name,String last_name,String email,String account,String password,String user_type) {
    int type;
    if(user_type=='Administrador'){
      type=2;
    }
    if(user_type=='Almacenero'){
      type=1;
    }
    if(user_type=='Vendedor'){
      type=3;
    }
    String datos = first_name + "-" + last_name + "-" + email + "-" + account +
        "-" + password + "-" + type.toString();
    print(datos);
    applicationService.addUser(datos).then((User user) {});
    added = true;
  }
}
