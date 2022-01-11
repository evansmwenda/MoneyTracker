import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_tracker/ui/home/home_viewmodel.dart';


class HomeView extends StatelessWidget {
 const HomeView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<HomeViewModel>.reactive(
     onModelReady:  (viewModel) => viewModel.initialise(),
     viewModelBuilder: () => HomeViewModel(),
     builder: (context, model, child) => Scaffold(
       appBar: AppBar(title: Text("Money Tracker"),),
       body: Center(child: Text("This is my money tracker app"),),
     ),
   );
}
}