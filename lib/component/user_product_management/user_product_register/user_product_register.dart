import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

@Component(
    selector: 'user-product-register',
    templateUrl: 'user_product_register.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class UserProductRegister{
    bool added = false;
    List<String> groups = ['Grupo 1', 'Grupo 2', 'Grupo 3'];
    List<String> subGroups = ['Subgrupo 1','Subgrupo 2'];
    String currentGroup = 'Grupo';
    String currentSubGroup = 'Subgrupo';
    String descripcion = '';
    void catchGroup(String group){
        this.currentGroup = group;
     }

    void catchSubGroup(String subGroup){
        this.currentSubGroup = subGroup;
     }
    void add(){
        this.added = true;
    }
}
