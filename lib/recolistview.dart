import 'package:flutter/material.dart';

class RecoListView extends StatelessWidget {
  const RecoListView({super.key});

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
            width: 400, 
            child: Row(
              children: [
             
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/silence.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
               
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/speak.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
