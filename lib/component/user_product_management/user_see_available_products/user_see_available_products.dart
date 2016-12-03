import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

@Component(
    selector: 'user-see-available-products',
    templateUrl: 'user_see_available_products.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserSeeAvailableProducts {
  Router router;
  ApplicationService applicationService;

  void ngAfterViewInit() {
    applicationService.getUserAvailableProducts().then((
        List<Product> products) {

    });
  }
}

