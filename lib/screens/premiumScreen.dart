import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class dukaanPremium extends StatelessWidget {
  const dukaanPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 11, 110, 191)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70, top: 15),
                          child: Text(
                            'Dukaan Premium',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 90, left: 20),
                  width: 321,
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.black26,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(
                                Icons.shopping_bag_rounded,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  'dukaan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text(
                                    'PREMIUM',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        textAdd(
                            content: 'Get Dukaan Premium for just',
                            content1: '₹4,999/year',
                            contentFont: FontWeight.w500,
                            content1Font: FontWeight.w500,
                            contentSize: 20.0,
                            content1Size: 20.0),
                        textAdd(
                            content:
                                'All the advanced features for scaling your',
                            content1: 'business.',
                            contentFont: FontWeight.normal,
                            content1Font: FontWeight.normal,
                            contentSize: 14.0,
                            content1Size: 14.0)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(
                      'Features',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                    ),
                  ),
                  iconText(
                      content: 'Custom domain name',
                      icon1: Icons.shop_outlined,
                      content1:
                          'Get your own custom domain and build \nyour brand on the internet.'),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: iconText(
                        content: 'Verified seller badge',
                        icon1: Icons.verified_outlined,
                        content1:
                            'Get green verified badge under your \nstore name and build trust.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: iconText(
                        content: 'Dukaan for PC',
                        icon1: Icons.computer_outlined,
                        content1:
                            'Access all the exclusive premium \nfeatures on Dukaan for PC.'),
                  ),
                  iconText(
                      content: 'Priority support',
                      icon1: Icons.headset_mic_outlined,
                      content1:
                          'Get your questions resolved with our \npriority customer support.')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 4,
            ),
            SizedBox(
              height: 10,
            ),
            questionTxt(question: 'What is Dukaan Premium ?'),
            Padding(
              padding: const EdgeInsets.all(23),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage('assets/images/dukaan.png'),
                  height: 150,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Divider(
              thickness: 4,
            ),
            questionTxt(question: 'Frequently asked questions'),
            askingQuestion(
                content: 'What type of business can use in Dukaan \nPremium?',
                buttonPress: () {},
                iconName: Icons.minimize),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Text(
                '''Dukan caters to a wide variety of sellers .Be it a \nsmall grocery store or a big leagcy brand - anyone \nwho wants to sell their products/services online - \nDukaan is the perfect platform for you.''',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ),
            divider1(),
            askingQuestion(
                content: 'What is your refund policy?',
                buttonPress: () {},
                iconName: Icons.add),
            divider1(),
            askingQuestion(
                content:
                    'Will there be an automatic charge after the \nPaid trail?',
                buttonPress: () {},
                iconName: Icons.add),
            divider1(),
            askingQuestion(
                content: 'What payment methods do you offer?',
                buttonPress: () {},
                iconName: Icons.add),
            divider1(),
            askingQuestion(
                content: 'What happens when my free trails ends?',
                buttonPress: () {},
                iconName: Icons.add),
            divider1(),
            askingQuestion(
                content: 'What are the terms for the custom domain?',
                buttonPress: () {},
                iconName: Icons.add),
            divider1(),
            Divider(
              thickness: 4,
            ),
            questionTxt(question: 'Need help? Get in touch'),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  addHelp(
                      content: 'Live Chat', icon: Icons.chat_bubble_outline),
                  addHelp(content: 'Phone Call', icon: Icons.phone_outlined)
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 12, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getPremium(content: 'Select Domain', fontColor: Colors.blue),
                  getPremium(
                      content: 'Get Premium',
                      boxColor: Colors.blue,
                      fontColor: Colors.white)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getPremium(
      {required String content, Color? boxColor, required Color fontColor}) {
    return Container(
      height: 40,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: boxColor),
      child: Center(
          child: Text(
        content,
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w500, color: fontColor),
      )),
    );
  }

  Widget addHelp({required String content, required IconData icon}) {
    return Container(
      height: 80,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.black45)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 35,
          ),
          Text(
            content,
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }

  Widget textAdd(
      {required String content,
      required String content1,
      required FontWeight contentFont,
      required FontWeight content1Font,
      required var contentSize,
      required var content1Size}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(
            content,
            style: TextStyle(fontWeight: contentFont, fontSize: contentSize),
          ),
          Text(
            content1,
            style: TextStyle(fontWeight: content1Font, fontSize: content1Size),
          )
        ],
      ),
    );
  }

  Widget iconText(
      {required String content,
      required IconData icon1,
      required String content1}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.blue, width: 2)),
            child: Icon(
              icon1,
              size: 45,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  content1,
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget questionTxt({
    required String question,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Text(
        question,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget askingQuestion(
      {required String content,
      required Function() buttonPress,
      required IconData iconName}) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black54),
          ),
          IconButton(onPressed: buttonPress, icon: Icon(iconName))
        ],
      ),
    );
  }

  Widget divider1() {
    return const Divider(
      thickness: 2,
      indent: 22,
      endIndent: 22,
    );
  }
}
