library logistic_ui.home;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';


import 'package:logistic_ui/providers.dart';

@Component(
    selector: 'home',
    templateUrl: 'home.html',
    directives: const [ROUTER_DIRECTIVES],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class Home {


}
