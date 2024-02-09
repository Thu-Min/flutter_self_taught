import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/phone.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Phone phone;

  CartItem({
    super.key,
    required this.phone
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.phone);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(widget.phone.imgPath),
        title: Text(
          widget.phone.name,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ), 
        subtitle: Text(widget.phone.price + ' \$'),
        trailing: IconButton(
          onPressed: () => removeItemFromCart,
          icon: Icon(
            Icons.delete,
            color: Colors.red ,
          )
        ),  
      ),
    );
  }
}