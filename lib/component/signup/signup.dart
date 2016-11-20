library logistic_ui.signup;
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';


import 'package:logistic_ui/providers.dart';

@Component(
    selector: 'signup',
    templateUrl: 'signup.html',
    directives: const [ROUTER_DIRECTIVES],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
class Signup {

}
