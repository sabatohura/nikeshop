import 'package:flutter/material.dart';
import 'package:nikeshop/models/cart.dart';
import 'package:nikeshop/models/shoe.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartListItem extends StatefulWidget {
  Shoe shoe;
  CartListItem({super.key, required this.shoe});

  @override
  State<CartListItem> createState() => _CartListItemState();
}

class _CartListItemState extends State<CartListItem> {
  void removeItemToCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
          width: 50,
        ),
        title: Text(
          widget.shoe.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text('\$${widget.shoe.price}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemToCart,
        ),
      ),
    );
  }
}
