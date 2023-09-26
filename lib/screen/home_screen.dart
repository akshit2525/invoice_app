import 'package:flutter/material.dart';
import 'package:invoice_app/uttils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Manage Product",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'invoice');
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: Global.g1.Invoicelist
                .map((e) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Text(
                              "100\nPcs",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "01 - Acfiam Tabi N Tablet",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(width: 30),
                            Text(
                              "200 TK",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    ));
  }
}
