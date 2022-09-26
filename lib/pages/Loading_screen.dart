import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/theme_settings.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.context});
  final BuildContext context;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    widget.context.read<ThemeSettings>().doneLoading = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Canon.jpg'),
              Text('Loading page'),
            ],
          ),
        ),
      ),
    );
  }
}
