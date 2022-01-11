import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_tracker/ui/views/transactions/add_transaction_view/add_transaction_viewmodel.dart';


class AddTransactionView extends StatelessWidget {
 const AddTransactionView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<AddTransactionViewModel>.reactive(
     onModelReady:  (viewModel) => viewModel.initialise(),
     viewModelBuilder: () => AddTransactionViewModel(),
     builder: (context, model, child) => Scaffold(
       appBar: AppBar(title: Text("Add Transaction"),),
       body: Center(child: Text("This is my money tracker app"),),
     ),
   );
}
}