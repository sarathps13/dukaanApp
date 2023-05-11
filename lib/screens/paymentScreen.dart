import 'package:dukaan_app1/screens/orderScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  double _initial = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        actions: [
          Icon(
            Icons.info_outline,
            size: 30,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 253, 255),
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transaction Limit',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                        '''A free limit up to which you will receive \nthe online payments directly in your bank'''),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: LinearProgressIndicator(
                        value: _initial,
                        minHeight: 8,
                        backgroundColor:
                            const Color.fromARGB(255, 229, 226, 226),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('36,668 left out of ₹50,000'),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 10, 127, 182)),
                        onPressed: () {
                          setState(() {
                            _initial = _initial + 0.2;
                          });
                        },
                        child: const Text('Increase limit'))
                  ],
                ),
              ),
            ),
          ),
          paymentMode(
              content: 'Default Method',
              iconContent: 'Online Payments',
              icon: Icons.arrow_forward_ios_outlined),
          paymentMode(
              content: 'Payment Profile',
              iconContent: 'Bank Account',
              icon: Icons.arrow_forward_ios_outlined),
          const Divider(
            thickness: 1,
            indent: 17,
            endIndent: 17,
          ),
          paymentMode(
              content: 'Payments Overview',
              weight: FontWeight.bold,
              iconContent: 'Life Time',
              icon: Icons.keyboard_arrow_down),
          Row(
            children: [
              amountShow(
                  content: 'AMOUNT ON HOLD',
                  content1: '₹0',
                  boxColor: const Color.fromARGB(255, 249, 114, 3)),
              amountShow(
                  content: 'AMOUNT RECEIVED',
                  content1: '₹13,332',
                  boxColor: const Color.fromARGB(255, 3, 167, 8))
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: Text(
              'Transactions',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonShow(
                  content: 'On hold',
                  buttonColor: const Color.fromARGB(138, 255, 253, 253),
                  textColor: Colors.black54),
              buttonShow(
                  content: 'Payouts (15)',
                  buttonColor: const Color.fromARGB(255, 10, 127, 182),
                  textColor: Colors.white),
              buttonShow(
                  content: 'Refunds',
                  buttonColor: const Color.fromARGB(138, 255, 253, 253),
                  textColor: Colors.black54)
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => OrderView()));
            },
            child: orderDetails(
                order: 'Order #1688068',
                date: 'Jul 12, 2.06 PM',
                imagedata: 'assets/images/yourdesgn.png',
                price: '₹799',
                deposited: '₹799 deposited to : 58860200000138'),
          ),
          divider(),
          orderDetails(
              order: 'Order #1457741',
              date: 'Apr 26, 07.47 AM',
              imagedata: 'assets/images/imgbig.png',
              price: '₹397.4',
              deposited: '₹397.4 deposited to: 5886060200000138'),
          divider(),
          orderDetails(
              order: 'Order #1408896',
              date: 'Apr 11, 10.11 AM',
              imagedata: 'assets/images/blackT.png',
              price: '₹686.42',
              deposited: '₹686.42 deposited to: 5886060200000136'),
          divider(),
          orderDetails(
              order: 'Order #1369633',
              date: 'Apr 2, 11.29 AM',
              imagedata: 'assets/images/fearT.png',
              price: '₹1123.5',
              deposited: '₹1123.5 deposited to: 5886060200000138'),
          divider(),
          orderDetails(
              order: 'Order #1370125',
              date: 'Apr 2, 11.17 AM',
              imagedata: 'assets/images/bisCup.png',
              price: '₹1722.7',
              deposited: '₹1722.7 deposited to: 5886060200000138'),
          divider(),
          orderDetails(
              order: 'Order #1370135',
              date: 'Apr 10, 11.17 AM',
              imagedata: 'assets/images/cupGranide.png',
              price: '₹884.17',
              deposited: '₹884.17 deposited to: 6756060200000138'),
          divider(),
          orderDetails(
              order: 'Order #1359971',
              date: 'Mar 10, 01.17 PM',
              imagedata: 'assets/images/cupNrml.png',
              price: '₹599.25',
              deposited: '₹599.25 deposited to: 5886060200000148'),
          divider(),
          orderDetails(
              order: 'Order #1265103',
              date: 'Mar 6, 01.26 PM',
              imagedata: 'assets/images/blackT.png',
              price: '₹2297',
              deposited: '₹2297 deposited to: 5886060200000148'),
          divider(),
          orderDetails(
              order: 'Order #1188068',
              date: 'Aug 12, 2.06 PM',
              imagedata: 'assets/images/bisCup.png',
              price: '₹599.2',
              deposited: '₹599.2 deposited to : 658860200000138'),
          divider(),
          orderDetails(
              order: 'Order #1788068',
              date: 'Aug 17, 2.06 PM',
              imagedata: 'assets/images/blackT.png',
              price: '₹524',
              deposited: '₹524 deposited to : 58860200000145'),
          divider(),
          orderDetails(
              order: 'Order #1888068',
              date: 'Sep 12, 4.06 PM',
              imagedata: 'assets/images/coolTshirt.png',
              price: '₹699',
              deposited: '₹699 deposited to : 658860200000138'),
          divider(),
          orderDetails(
              order: 'Order #1988068',
              date: 'Sep 18, 2.06 AM',
              imagedata: 'assets/images/cupNrml.png',
              price: '₹1123',
              deposited: '₹1123 deposited to : 658860200000148'),
          divider(),
          orderDetails(
              order: 'Order #11788068',
              date: 'Oct 12, 2.06 PM',
              imagedata: 'assets/images/cupGranide.png',
              price: '₹799',
              deposited: '₹799 deposited to : 758860200000138'),
          divider(),
          orderDetails(
              order: 'Order #1688068',
              date: 'Nov 12, 5.06 PM',
              imagedata: 'assets/images/yourdesgn.png',
              price: '₹594',
              deposited: '₹594 deposited to : 758860200000148'),
        ],
      ),
    );
  }

  Widget paymentMode(
      {required String content,
      required String iconContent,
      required IconData icon,
      FontWeight? weight}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              content,
              style: TextStyle(fontSize: 17, fontWeight: weight),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Text(
                iconContent,
                style: const TextStyle(color: Colors.grey),
              ),
              label: Icon(
                icon,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget amountShow(
      {required String content,
      required String content1,
      required Color boxColor}) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 100,
      width: 165,
      decoration: BoxDecoration(
          color: boxColor, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              content1,
              style: const TextStyle(fontSize: 23, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget buttonShow(
      {required String content,
      required Color buttonColor,
      required Color textColor}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Text(
          content,
          style: TextStyle(color: textColor),
        ));
  }

  Widget orderDetails(
      {required String order,
      required String date,
      required String imagedata,
      required String price,
      required String deposited}) {
    return Container(
        child: Column(
      children: [
        ListTile(
          title: Text(
            order,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          subtitle: Text(
            date,
            style: const TextStyle(fontSize: 12),
          ),
          leading: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(3)),
            child: SizedBox(
              width: 60,
              height: 50,
              child: Image(
                image: AssetImage(imagedata),
                fit: BoxFit.cover,
              ),
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(left: 10, top: 13),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    price,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 8, 138, 245)),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Color.fromARGB(255, 9, 156, 14),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Successful',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              deposited,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    ));
  }

  Widget divider() {
    return const Divider(
      thickness: 1,
      indent: 17,
      endIndent: 17,
    );
  }
}
