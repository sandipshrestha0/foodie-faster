import 'package:flutter/material.dart';

String dropdownvalue = 'Item 1';
var items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          height: 40.0,
        ),
      ),
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              child: Center(
                  child: Text(
                "Create your Kota",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              )),
            ),
          ),
          Container(
            child: Text("image slider"),
            
          ),
          Container(
            child: Text("selected image"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            child: Card(
              elevation: 20,
              shadowColor: Colors.black,
              color: const Color.fromARGB(255, 221, 220, 218),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 500,
                    color: Colors.black,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            child: Text(
                              "Select Source",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            child: DropdownButton(
                                value: dropdownvalue,
                                style: TextStyle(color: Colors.white),
                                dropdownColor: Colors.black,
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    child: Table(
                      border: TableBorder(
                        horizontalInside: BorderSide(
                            width: 2,
                            color: Colors.black38,
                            style: BorderStyle.solid),
                      ),
                      children: [
                        TableRow(
                          children: [
                            Column(
                              children: [
                                Image(
                                  image: NetworkImage(
                                    "https://digitalcontent.api.tesco.com/v2/media/ghs/458540f6-2dd9-4f37-8730-9f0cd33d3904/6d1aea41-18f7-4784-9198-c5936d44dae8_92208940.jpeg?h=960&w=960",
                                  ),
                                  height: 40,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Tomato Sauce",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Free ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        TableRow(children: [
                          Container(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "BBQ Sauce",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Rs. 100.0",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Chicken Pizza",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Rs. 500.0",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text("checkout"),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 100,
                
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3)
                      )],
                      color: Colors.white),
                      
                      
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
