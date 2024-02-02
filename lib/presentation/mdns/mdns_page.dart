import 'package:flutter/material.dart';

class MdnsPage extends StatefulWidget {
  const MdnsPage({super.key});

  @override
  State<MdnsPage> createState() => _MdnsPageState();
}

class _MdnsPageState extends State<MdnsPage> {
  final testList = List.generate(50, (index) => 'Some Service');
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 72),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SearchBar(
                  controller: searchController,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(Icons.search),
                  ),
                  hintText: 'Search',
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Searching for services...'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
