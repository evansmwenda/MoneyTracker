import 'package:flutter/material.dart';
import 'package:money_tracker/ui/widgets/transaction_tile.dart';
import 'package:stacked/stacked.dart';
import 'package:money_tracker/ui/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (viewModel) => viewModel.initialise(),
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Money Tracker"),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                child: Text("Upper part"),
                color: Colors.green,
                height: 200,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                bottom: 0,
                height: MediaQuery.of(context).size.height - 240,
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return TransactionTile(index: index);
                      }),
                ),
              ),
            ],
          ),
        ),

        //   ],
        // ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: model.gotoAddTransaction,
              tooltip: "Add Transaction",
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: model.gotoAllTransactions,
              tooltip: "Transactions",
              child: const Center(
                child: Icon(
                  Icons.format_list_numbered_rtl,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
