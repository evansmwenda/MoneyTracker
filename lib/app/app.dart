import 'package:money_tracker/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
@StackedApp(
  routes : [
    MaterialRoute(page: HomeView,initial: true),
  ],
  dependencies :[
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
  ]
)

class AppSetup{
  ///serves no function other than having annotation attached to it
}
