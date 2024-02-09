import 'package:ecommerce_app/models/phone.dart';
import 'package:flutter/material.dart';

class PhoneTile extends StatelessWidget {
  Phone phone;

  void Function()? onTap;

  PhoneTile({
    super.key,
    required this.phone,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 240,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              phone.imgPath,
            ),
          ),

          Text(
            phone.description,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      phone.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20 
                      )
                    ),
                    Text(
                      '\$ ' + phone.price,
                      style: const TextStyle(
                        color: Colors.grey 
                      ),
                    )
                  ]
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)
                      )
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ),
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}