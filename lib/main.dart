import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefrences/models/theme_settings.dart';
import 'package:shared_prefrences/pages/settings.dart';

import 'pages/Loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => ThemeSettings(),),
      ],
        child: Consumer<ThemeSettings>(
          builder: (context, value, child) {
            return value.doneLoading ? MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: value.darkTheme ? darkTheme : lightTheme,
            home: Settings(),
            ): LoadingScreen(context: context,);
          }
          ),
      );
  }
}
