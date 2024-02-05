import 'package:ecommerce_app/components/phone_tile.dart';
import 'package:ecommerce_app/models/phone.dart';
import 'package:flutter/material.dart';

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
              Phone phone = Phone(name: 'a54', price: '200', imgPath: 'lib/images/a54.jpeg', description: 'testing');
              
              return PhoneTile(
                phone: phone,
              );
            }
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(
            
          ),
        )
      ],
    );
  }
}