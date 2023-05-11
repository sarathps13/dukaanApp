import 'package:dukaan_app1/screens/catalogueScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class viewCatalog extends StatefulWidget {
  const viewCatalog({super.key});

  @override
  State<viewCatalog> createState() => _viewCatalogState();
}

class _viewCatalogState extends State<viewCatalog> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 110, top: 20),
            child: Text(
              'Catalogue',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: Colors.white),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  size: 37,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Products',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          CatalogueView(),
          Center(
            child: Text(' No Categories Available'),
          )
        ]),
      ),
    );
  }
}
