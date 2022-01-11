import 'package:money_tracker/ui/views/home/home_view.dart';
import 'package:money_tracker/ui/views/transactions/add_transaction_view/add_transaction_view.dart';
import 'package:money_tracker/ui/views/transactions/transactions_view/transactions_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes : [
    MaterialRoute(page: HomeView,initial: true),
    MaterialRoute(page: TransactionsView,),
    MaterialRoute(page: AddTransactionView,),
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
