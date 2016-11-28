import 'dart:async';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';


@Component(
    selector: 'user-administrator-modify',
    templateUrl: 'user_administrator_modify.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserAdministratorModify implements OnInit{

  ApplicationService applicationService;

  Router router;
  UserAdministratorModify(ApplicationService this.applicationService) {}
  List<User> users;
  Future<Null> getUsers()  async {
    users = await applicationService.getUsers();
  }

  void ngOnInit() {
    getUsers();
  }

}
