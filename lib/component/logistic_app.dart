library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/component/home/home.dart';
import 'package:logistic_ui/component/login/login.dart';
import 'package:logistic_ui/component/signup/signup.dart';

@Component(
    selector: 'logistic-app',
    templateUrl: 'logistic_app.html',
    directives: const [ROUTER_DIRECTIVES],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@RouteConfig(const [
  const Route(path: '/home', component: Home, name: 'Home'),
  const Route(path: '/login', component: Login, name: 'Login'),
  const Route(path: '/signup', component: Signup, name: 'Signup'),
])

class LogisticApp implements AfterViewInit {

  Router router;
  LogisticApp(Router this.router) {}
  void ngAfterViewInit() {

    this.router.navigate(['Login']);
  }
}


