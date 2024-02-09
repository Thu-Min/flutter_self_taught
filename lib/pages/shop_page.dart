import 'package:ecommerce_app/components/phone_tile.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/phone.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addPhoneToCart(Phone phone) {
    Provider.of<Cart>(context, listen: false).addItemToCart(phone);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.green[100],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Successfully added!', style: TextStyle(fontSize: 16)),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.cancel)
            )
          ],
        ),
        content: Text('Check your Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10)
            ),

            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'lorem',
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'New Releases',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Phone phone = value.getPhoneList()[index];
                
                return PhoneTile(
                  phone: phone,
                  onTap: () => addPhoneToCart(phone ),
                );
              }
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ) 
    );
  }
}