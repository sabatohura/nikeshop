import 'package:flutter/material.dart';
import 'package:nikeshop/data/shoes.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "Everyone flies, but some fly longer than others",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: shoes.length,
          itemBuilder: (context, index) {
            Shoe shoe = shoes[index];
            return ShoeTile(shoe: shoe);
          },
        )),
        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.transparent,
          ),
        )
      ],
    );
  }
}
