import 'package:dukaan_app1/screens/additionalInfo.dart';
import 'package:dukaan_app1/screens/cataloScreen.dart';
import 'package:dukaan_app1/screens/catalogueScreen.dart';
import 'package:dukaan_app1/screens/paymentScreen.dart';
import 'package:dukaan_app1/screens/premiumScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({super.key});

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Manage Store')),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: manageItem(
                        iconName: Icons.campaign,
                        iconColor: Color.fromARGB(255, 253, 79, 5),
                        content: 'Marketing \nDesigns',
                        containerColor: Colors.white),
                  ),
                  InkWell(
                    onTap: () {},
                    child: manageItem(
                        iconName: Icons.currency_rupee_outlined,
                        iconColor: Color.fromARGB(255, 61, 214, 66),
                        content: 'Online \nPayments',
                        containerColor: Colors.white),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                manageItem(
                    iconName: Icons.discount_outlined,
                    iconColor: Color.fromARGB(255, 189, 143, 5),
                    content: 'Discount \nCoupons',
                    containerColor: Colors.white),
                InkWell(
                    onTap: () {},
                    child: manageItem(
                        iconName: Icons.people_alt_outlined,
                        iconColor: Color.fromARGB(255, 3, 136, 105),
                        content: ' My \nCustomers',
                        containerColor: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: manageItem(
                      iconName: Icons.qr_code_2_outlined,
                      iconColor: Color.fromARGB(255, 109, 106, 106),
                      content: 'Store QR \nCode',
                      containerColor: Colors.white),
                ),
                InkWell(
                  onTap: () {},
                  child: manageItem(
                      iconName: Icons.request_page_rounded,
                      iconColor: Color.fromARGB(173, 46, 3, 120),
                      content: 'Extra \nCharges',
                      containerColor: Colors.white),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: manageItem(
                        iconName: Icons.line_weight_sharp,
                        iconColor: Color.fromARGB(255, 184, 81, 115),
                        content: 'Order        \nForm',
                        containerColor: Colors.green),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget manageItem(
      {required IconData iconName,
      required Color iconColor,
      required String content,
      required Color containerColor}) {
    return Container(
      height: 120,
      width: 170,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 35,
                    width: 40,
                    decoration: BoxDecoration(
                        color: iconColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      iconName,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 45,
                    decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                        child: Text(
                      'NEW',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Text(
                  content,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
