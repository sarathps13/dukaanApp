import 'package:dukaan_app1/icon/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({super.key});

  @override
  State<MoreInfo> createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 87, 155),
        title: const Text('Additional Information'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            )),
      ),
      body: ListView(
        children: [
          shareOptions(
              icon1: Icons.share_outlined,
              content: 'Share Dukaan App',
              icon2: Icons.arrow_forward_ios_rounded,
              buttonAction: () {}),
          shareOptions(
            icon1: Icons.messenger_outline,
            content: 'Change Language',
            icon2: Icons.arrow_forward_ios_rounded,
            buttonAction: () {},
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(MyFlutterApp.whatsapp,
                    size: 20, color: Colors.black),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Whatsapp Chat Support',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 19,
                ),
                Switch(
                  value: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  activeColor: Colors.blue,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: shareOptions(
                icon1: MyFlutterApp.lock_1, content: 'Privacy Policy'),
          ),
          InkWell(
            onTap: () {},
            child: shareOptions(
                icon1: Icons.star_border_sharp, content: 'Rate Us'),
          ),
          InkWell(
            onTap: () {},
            child: shareOptions(icon1: Icons.logout, content: 'Sign Out'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Version',
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '2.4.2',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black54),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget shareOptions(
      {required IconData icon1,
      required String content,
      IconData? icon2,
      void Function()? buttonAction}) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            icon1,
            size: 20,
            color: Colors.black,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            content,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            width: 85,
          ),
          IconButton(
              onPressed: buttonAction,
              icon: Icon(
                icon2,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
