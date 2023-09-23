import 'package:flutter/material.dart';
import 'package:nikeshop/models/cart.dart';
import 'package:provider/provider.dart';

import '../components/cart_list_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartListItem(
                    shoe: value.userCart[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
