import 'package:e_comm_yt/models/cart.dart';
import 'package:e_comm_yt/models/watch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Watch watch;
  CartItem({super.key, required this.watch});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from the cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.watch);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
          leading: Image.asset(widget.watch.imagePath),
          title: Text(widget.watch.name),
          subtitle: Text('\$' + widget.watch.price),
          trailing: IconButton(
            onPressed: removeItemFromCart,
            icon: Icon(Icons.delete),
          )),
    );
  }
}
