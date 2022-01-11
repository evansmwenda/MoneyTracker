import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_tracker/ui/views/home/home_viewmodel.dart';


class HomeView extends StatelessWidget {
 const HomeView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<HomeViewModel>.reactive(
     onModelReady:  (viewModel) => viewModel.initialise(),
     viewModelBuilder: () => HomeViewModel(),
     builder: (context, model, child) => Scaffold(
       appBar: AppBar(title: Text("Money Tracker"),),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             child: Text("Upper part"),
             color: Colors.green,
             height: 200,
             width: MediaQuery.of(context).size.width,
           ),
           Expanded(
             child: Container(
               width: MediaQuery.of(context).size.width,
               child: Text("lower part"),
               color: Colors.red,
             ),
           ),
         ],
       ),
       floatingActionButton: Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           FloatingActionButton(
             onPressed: model.gotoAddTransaction,
             tooltip: "Add Transaction",
             child: const Center(
               child: Icon(Icons.add,color: Colors.white,),
             ),
           ),
           SizedBox(width: 20,),
           FloatingActionButton(
             onPressed: model.gotoAllTransactions,
             tooltip: "Transactions",
             child: const Center(
               child: Icon(Icons.format_list_numbered_rtl,color: Colors.white,),
             ),
           )
         ],
       ) ,
     ),
   );
}
}