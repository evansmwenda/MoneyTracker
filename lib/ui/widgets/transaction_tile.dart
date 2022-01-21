import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  int? index;
  TransactionTile({Key? key,this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          title: Text("List tile $index",),
          subtitle: Text("subtitle here",),
          trailing: Text("\$ 200",style: TextStyle(color: Colors.red,fontSize: 17,),),
        ),
        Divider(thickness: 1,),
      ],
    );
  }
}