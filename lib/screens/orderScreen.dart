import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../icon/my_flutter_app_icons.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 26),
          child: Text('Order #1688068'),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Jul 12, 2.06 PM',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 7,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Delivered', style: TextStyle(fontSize: 18))
                  ],
                )
              ],
            ),
          ),
          divider(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '1 ITEM',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.receipt_rounded,
                          color: Color.fromARGB(255, 15, 123, 211),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'RECEIPT',
                          style: TextStyle(
                              color: Color.fromARGB(255, 15, 123, 211),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 90,
                        height: 60,
                        child: Image(
                          image: AssetImage('assets/images/yourdesgn.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 19),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Explore |Men | Navy Blue',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('1 piece \nSize: XL '),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 204, 217, 239),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 77, 167, 240))),
                                child: const Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 77, 167, 240),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text('x  ₹799'),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Text(
                        '₹799',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          divider(),
          itemTotal(
              content: 'Item Total',
              price: '₹799',
              priceSize: 20.0,
              contentSize: 20.0),
          const SizedBox(
            height: 7,
          ),
          itemTotal(
              content: 'Delivery',
              price: 'FREE',
              priceColor: Colors.green,
              priceSize: 20.0,
              contentSize: 20.0),
          const SizedBox(
            height: 7,
          ),
          itemTotal(
              content: 'Grand Total',
              price: '₹799',
              contentFont: FontWeight.w500,
              priceFont: FontWeight.w500,
              priceSize: 25.0,
              contentSize: 23.0),
          const SizedBox(
            height: 7,
          ),
          divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CUSTOMER DETAILS',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'SHARE',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Text(
                              'Deepa',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Text('+91-7834535636', style: TextStyle(fontSize: 19))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_android_outlined,
                          size: 40,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          MyFlutterApp.whatsapp,
                          size: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270, top: 10),
                  child: Text(
                    'Address',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                      '''D 1101 chartered Beverly \nHills,Subramanyapura P.O''',
                      style: TextStyle(fontSize: 19)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100, top: 10, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'City',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('Banglore', style: TextStyle(fontSize: 19))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Pincode',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('560661', style: TextStyle(fontSize: 19))
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Payment',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Online',
                            style: TextStyle(fontSize: 19),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 166, 231, 168),
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                        child: Text(
                          'PAID',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 6, 111, 10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          divider(),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ADDITIONAL INFORMATION',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('State',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                Text(
                  'Karnataka',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Email',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                Text('greeniceaqua@gmail.com', style: TextStyle(fontSize: 18)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue, width: 2)),
                  child: Center(
                      child: Text(
                    'Share receipt',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget divider() {
    return const Divider(
      thickness: 1,
      indent: 17,
      endIndent: 17,
    );
  }

  Widget itemTotal(
      {required String content,
      required String price,
      Color? priceColor,
      FontWeight? contentFont,
      FontWeight? priceFont,
      required var contentSize,
      required var priceSize}) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(content,
              style: TextStyle(fontSize: contentSize, fontWeight: contentFont)),
          Text(
            price,
            style: TextStyle(
                fontSize: priceSize, fontWeight: priceFont, color: priceColor),
          )
        ],
      ),
    );
  }
}
