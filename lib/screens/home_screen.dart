import 'package:flutter/material.dart';
import 'package:money_laundry/screens/order_screen.dart';
import 'package:money_laundry/screens/List_order_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: SafeArea(
        child: Column(
          children: [

            /// HEADER 
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        
                        child: Icon(Icons.local_laundry_service, color: Colors.blue),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Money\nLaundry",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.settings, color: Colors.white)
                ],
              ),
            ),

            /// CONTENT 
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [

                    /// CARD INFO
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expired"),
                          SizedBox(height: 5),
                          Text(
                            "26 Apr 2026",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Ken-Wash"),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    /// MENU TITLE
                    Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 15),

                    /// MENU GRID 
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        menuItem("assets/images/order.jpg", "Order", CreateOrderPage(), context),
                        // menuItem("assets/images/order.jpg", "List Order", CreateOrderPage(), context),
                        // menuItem("assets/images/order.jpg", "Report", CreateOrderPage(), context),
                        // menuItem("assets/images/order.jpg", "Service", CreateOrderPage(), context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget menuItem(String imagePath, String title, Widget page, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              width: 30,
              height: 30,
            ),
          ),
          SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}