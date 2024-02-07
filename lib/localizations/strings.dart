// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';

import 'package:easy_localization_generator/easy_localization_generator.dart';

part 'strings.g.dart';

@SheetLocalization(
  docId: '1QTSEmvW0zD_wG_7lrxFIVgTZpj5xP8AlDbn3ZAG6k30',
  version: 1, // the `1` is the generated version.
  //You must increment it each time you want to regenerate a new version of the
  // labels.
  outDir: 'assets/langs', //default directory save downloaded CSV file
  outName: 'langs.csv', //default CSV file name
  preservedKeywords: [
    'few',
    'many',
    'one',
    'other',
    'two',
    'zero',
    'male',
    'female',
  ],
)
// ignore: unused_element
class _Strings {}
