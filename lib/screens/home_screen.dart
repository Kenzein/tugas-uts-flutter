import 'package:flutter/material.dart';
import 'package:money_laundry/screens/order_screen.dart';
import 'package:money_laundry/screens/list_order_screen.dart';
import 'package:money_laundry/screens/report_screen.dart';
import 'package:money_laundry/widgets/app_sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppSidebar(),
      backgroundColor: Color(0xFF6594B1),
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

                        child: Icon(
                          Icons.local_laundry_service,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Money\nLaundry",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: Icon(Icons.settings),
                    ),
                  ),
                  // Icon(Icons.settings, color: Colors.white),
                ],
              ),
            ),

            /// CONTENT
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
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
                            children: [Text("Ken-Wash")],
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
                        menuItem(
                          "assets/images/order.jpg",
                          "Order",
                          CreateOrderPage(),
                          context,
                        ),
                        menuItem(
                          "assets/images/listorder.jpg",
                          "List Order",
                          ListOrderScreen(),
                          context,
                        ),
                        menuItem(
                          "assets/images/report.jpg",
                          "Report",
                          ReportScreen(),
                          context,
                        ),
                        menuItem(
                          "assets/images/service.jpg",
                          "Service",
                          CreateOrderPage(),
                          context,
                        ),
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

  Widget menuItem(
    String imagePath,
    String title,
    Widget page,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
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
            child: Image.asset(imagePath, width: 30, height: 30),
          ),
          SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}
