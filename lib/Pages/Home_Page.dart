// WIDGETS ARE IMMUTABLE BUT ELEMENTS ARE MUTTABLE
// IN HOT RELOAD ONL BUILD METHOD IS CALLED
// BUIULD CONTEXT SHOWS LOCATION OF WIDGETS IN YOUR CODE , LOCATION IS NOTHING BUT CONTEST AND CONTEST Is NOTHING  BUT ELEMENT .
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert'; // gives json decoder and encoder , to decode json file
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

int days = 20;
String name = "Codepur";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() { 
    // function
    // TODO: implement initState
    super.initState();
    loadData(); // function declartion .
  }

  // json is in map format key and value pair
  loadData() async {
    // the file takes takes some time to load ,therefore we used await
    // inorder to load the files first, we have to give path in pubs.yml of our file folder in assats
    var catalogJson = await rootBundle.loadString(
        "assets/files/catalog.json"); // to load the json file in build method
    //  print(catalogJson); // present in sevrices library
    var decodedData = jsonDecode(catalogJson);
    // print(decodedData);
    // decode means string to map , encode means map to string                // by decoding json you will get a dynamic value, may be map
    var productsData = decodedData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    // The build method of a stateless widget is typically only called in three situations: the first time the widget is inserted in the tree, when the widget's parent changes its configuration, and when an InheritedWidget it depends on changes.
    final dummylist = List.generate(50, ((index) => CatalogModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        // constructor
        title: Text("Catalog App",
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist
              .length, // items are instant class members so , it requires to make class ststic // it gives the no of items to display
          itemBuilder: (context, index) {
            // used to display items
            return ItemWidget(
              // this requires item compulsary
              item: dummylist[
                  index], // items is like array with index stored in catalogmodel class items[intex=0] means first item in array
            );
          },
        ),
      ), // builder give reclcle view ,so things which are on screen are only rendered it also provides scrollable list of arrays.it keeps loaded some extra items on background so when you scroll, things doesnt feels to be loaded.
      drawer:
          MyDrawer(), // here we have to give the class name with which we have defined a drawer in drawer.dart file in order to call a constructor .
    );
  }
}
  // ############# DUMMY TO CHECK WITH ONE ITEM IF APP IS WORKING  ##############

// @override
//   Widget build(BuildContext context) {
//     // The build method of a stateless widget is typically only called in three situations: the first time the widget is inserted in the tree, when the widget's parent changes its configuration, and when an InheritedWidget it depends on changes.
//     final dummylist = List.generate(50, ((index) => CatalogModel.items[0]));
//     return Scaffold(
//       appBar: AppBar(
//         // constructor
//         title: Text("Catalog App",
//             style: TextStyle(
//               color: Colors.black,
//             )),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: dummylist
//               .length, // items are instant class members so , it requires to make class ststic // it gives the no of items to display
//           itemBuilder: (context, index) {
//             // used to display items
//             return ItemWidget(
//               // this requires item compulsary
//               item: dummylist[
//                   index], // items is like array with index stored in catalogmodel class items[intex=0] means first item in array
//             );
//           },
//         ),
//       ), // builder give reclcle view ,so things which are on screen are only rendered it also provides scrollable list of arrays.it keeps loaded some extra items on background so when you scroll, things doesnt feels to be loaded.
//       drawer:
//           MyDrawer(), // here we have to give the class name with which we have defined a drawer in drawer.dart file in order to call a constructor .
//     );
//   }
// }

