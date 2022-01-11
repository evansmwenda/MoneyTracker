import 'package:flutter/material.dart';
import 'package:money_tracker/ui/views/transactions/transactions_view/transactions_viewmodel.dart';
import 'package:stacked/stacked.dart';


class TransactionsView extends StatelessWidget {
 const TransactionsView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<TransactionsViewModel>.reactive(
     onModelReady:  (viewModel) => viewModel.initialise(),
     viewModelBuilder: () => TransactionsViewModel(),
     builder: (context, model, child) => Scaffold(
       appBar: AppBar(title: Text("Transactions"),),
       body: Container(
         margin: EdgeInsets.symmetric(horizontal: 10,vertical:5,),
         child: ListView.builder(
             itemCount: 7,
             itemBuilder: (context, index) {
               return Column(
                 children: [
                   ListTile(
                     title: Text("List tile $index",),
                     subtitle: Text("subtitle here",),
                   ),
                   Divider(thickness: 1,),
                 ],
               );
             }),
       ),
     ),
   );
}
}