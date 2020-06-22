import 'package:flutter/material.dart';

class bar_chart extends StatelessWidget {
  @override
  final double amount,percentage_of_spending;

  final String day;
  bar_chart(this.amount,this.day,this.percentage_of_spending);
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       Container(
         height: 20,
         child: FittedBox(child: Text('\$ ${amount.toStringAsFixed(0)}'))),
       SizedBox(height: 4,),
       Container(
         height: 60,
         width: 10,
         child: Stack(
           children: <Widget>[
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
              color:Color.fromRGBO(220, 220, 220, 1),
              borderRadius: BorderRadius.circular(10)),
            ),
            FractionallySizedBox(
              heightFactor: percentage_of_spending,
              child: Container(
                decoration: BoxDecoration(color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10)),
              ),
            )
            
           ],
         ),
       ), SizedBox(height: 4,),
       Text(day)
      ],
    );
  }
}