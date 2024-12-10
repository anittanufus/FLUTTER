import 'package:flutter/material.dart';
import 'package:tugas_flutter/form/form.dart';
import 'package:tugas_flutter/layout/aspectRatio.dart';
import 'package:tugas_flutter/layout/center.dart';
import 'package:tugas_flutter/layout/columnLayout.dart';
import 'package:tugas_flutter/layout/expanded.dart';
import 'package:tugas_flutter/layout/gridView.dart';
import 'package:tugas_flutter/layout/listView.dart';
import 'package:tugas_flutter/layout/padding.dart';
import 'package:tugas_flutter/layout/rowLayout.dart';
import 'package:tugas_flutter/layout/satck.dart';
import 'package:tugas_flutter/layout/sizedBox.dart';
import 'package:tugas_flutter/layout/wrap.dart';
import 'package:tugas_flutter/navigation/drawer.dart';
import 'package:tugas_flutter/navigation/navbar.dart';
import 'package:tugas_flutter/navigation/pushandpop.dart';
import 'package:tugas_flutter/navigation/silverAppBar.dart';
import 'package:tugas_flutter/navigation/tabbar.dart';
import 'package:tugas_flutter/widget/appBar.dart';
import 'package:tugas_flutter/widget/button.dart';
import 'package:tugas_flutter/widget/circleAvatar.dart';
import 'package:tugas_flutter/widget/column.dart';
import 'package:tugas_flutter/widget/container.dart';
import 'package:tugas_flutter/widget/icon.dart';
import 'package:tugas_flutter/widget/row.dart';
import 'package:tugas_flutter/widget/scaffold.dart';
import 'package:tugas_flutter/widget/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 194, 121, 53)),
        useMaterial3: true,
      ),
      home:WrapD()
    );
  }
}