import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget(
      {super.key,
      required this.item}); // assert is required to reject null value                           // item is class created in catalog.dart

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Colors.deepPurple,
      // shape: StadiumBorder(),
      // // color: Colors.lightBlue,
      // surfaceTintColor: Colors.deepOrange,

      // it provides elevation to listtile
      child: ListTile(
        onTap: () {
          // WHY TO USE $ --> it used for string interpolation in dart .
          print(
              "${item.name} pressed"); // here $ is used to interpolate the value of name stored in class catalog
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
        // to give dollsr sign to price.
      ),
    );
  }
}
