import 'package:flutter/material.dart';
import 'package:money_laundry/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateOrderPage(),
    );
  }
}

class CreateOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: Column(
          children: [

            //  HEADER 
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Title
                  Center(
                    child: Text(
                      "Create Order",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2026/04/13",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Ken-Wash",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  // Input Customer
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Customers",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            //  BODY 
            Expanded(
              child: Center(
                child: Text(
                  "Add Service",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            // ================= BOTTOM =================
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // Total
                  Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // Batal
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(
                              MaterialPageRoute(builder: (_) => HomePage())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: StadiumBorder(),
                          ),
                          child: Text("Batalkan"),
                        ),
                      ),

                      SizedBox(width: 10),

                      // Simpan
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            shape: StadiumBorder(),
                          ),
                          child: Text("Simpan"),
                        ),
                      ),

                      SizedBox(width: 10),

                      // Process
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: StadiumBorder(),
                          ),
                          child: Text("Process"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}