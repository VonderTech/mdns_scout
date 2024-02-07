import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MdnsPage extends StatefulWidget {
  const MdnsPage({super.key});

  @override
  State<MdnsPage> createState() => _MdnsPageState();
}

class _MdnsPageState extends State<MdnsPage> with WidgetsBindingObserver {
  final testList = List.generate(50, (index) => 'Some Service');
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    if (context.supportedLocales.contains(locales!.first)) {
      context.setLocale(locales.first);
    } else {
      context.setLocale(context.fallbackLocale!);
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

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
                  hintText: tr('SEARCH'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('${context.tr('LOOKING_FOR_SERVICES')}...'),
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
