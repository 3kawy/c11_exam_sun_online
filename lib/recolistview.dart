
import 'package:flutter/material.dart';

class RecoListView extends StatelessWidget {
  const RecoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 200,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(

              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/images/silence.jpg")
                    , fit: BoxFit.fill


                ),
              ),


            ),
          );
        }),
          );

  }
}