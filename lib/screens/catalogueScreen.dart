import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CatalogueView extends StatefulWidget {
  const CatalogueView({super.key});

  @override
  State<CatalogueView> createState() => _CatalogueViewState();
}

class _CatalogueViewState extends State<CatalogueView> {
  bool val1 = true;
  bool val2 = false;
  bool val3 = true;
  bool val4 = false;
  bool val5 = true;
  bool val6 = false;
  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newvalue2) {
    setState(() {
      val2 = newvalue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  onChangeFunction4(bool newValue4) {
    setState(() {
      val4 = newValue4;
    });
  }

  onChangeFunction5(bool newValue5) {
    setState(() {
      val5 = newValue5;
    });
  }

  onChangeFunction6(bool newValue6) {
    setState(() {
      val6 = newValue6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Color.fromARGB(66, 213, 210, 210)),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                productView(
                    content: 'Explore|Men|Nav..',
                    imageData: 'assets/images/yourdesgn.png',
                    price: '₹799',
                    onChangeMethod: onChangeFunction1,
                    val: val1),
                productView(
                    content: 'Mug | Explore',
                    imageData: 'assets/images/cupGranide.png',
                    price: '₹884.17',
                    val: val2,
                    onChangeMethod: onChangeFunction2),
                productView(
                    content: 'Fear| T-Shirts | Men',
                    imageData: 'assets/images/fearT.png',
                    price: '₹1123.5',
                    val: val3,
                    onChangeMethod: onChangeFunction3),
                productView(
                    content: 'Black T-shirt | Plain',
                    imageData: 'assets/images/blackT.png',
                    price: '686.42',
                    val: val4,
                    onChangeMethod: onChangeFunction4),
                productView(
                    content: 'Mug | BisCup',
                    imageData: 'assets/images/bisCup.png',
                    price: '₹1722.7',
                    val: val5,
                    onChangeMethod: onChangeFunction5),
                productView(
                    content: 'Mug | Normal Design',
                    imageData: 'assets/images/cupNrml.png',
                    price: '₹599.25',
                    val: val6,
                    onChangeMethod: onChangeFunction6)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget productView(
      {required String content,
      required String imageData,
      required String price,
      required bool val,
      required Function onChangeMethod}) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 5),
      height: 180,
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadowColor: Colors.black,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 13),
                    height: 100,
                    width: 100,
                    child: Image(
                      image: AssetImage(imageData),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                content,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert_outlined))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Text(
                              '1Piece',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black54),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 58),
                            child: Text(
                              price,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 67),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'In Stock',
                                  style: TextStyle(color: Colors.green),
                                ),
                                Switch(
                                    value: val,
                                    onChanged: (newValue) {
                                      onChangeMethod(newValue);
                                    })
                              ],
                            ),
                          )
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share_outlined, size: 25, color: Colors.black54),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Share Product',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54),
                  )
                ],
              )
            ],
          )),
    );
  }
}
