import "package:ecommerce_app/components/cart_item.dart";
import "package:ecommerce_app/models/cart.dart";
import "package:ecommerce_app/models/phone.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Text(
              "My Shopping Cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Phone phone = value.getUserCart()[index];

                  return CartItem(phone: phone);
                }
              )
            )
          ],
        ),
      )
    );
  }
}