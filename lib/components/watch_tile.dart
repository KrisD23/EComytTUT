import 'package:e_comm_yt/models/watch.dart';
import 'package:flutter/material.dart';

class WatchTile extends StatelessWidget {
  Watch watch;
  void Function()? onTap;
  WatchTile({super.key, required this.watch, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Watch picture
          ClipRRect(
            child: Image.asset(watch.imagePath),
            borderRadius: BorderRadius.circular(12),
          ),

          // Watch description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              watch.description,
              style: const TextStyle(color: Colors.grey),
            ),
          ),

          // pice + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // watch name
                    Text(
                      watch.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //price
                    Text(
                      '\$' + watch.price,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                // plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: const EdgeInsets.all(28),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )

          // add to cart
        ],
      ),
    );
  }
}
