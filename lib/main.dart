import 'package:flutter/material.dart';

import 'app/theme.dart';

void main() => runApp(const YourWalletApp());

class YourWalletApp extends StatelessWidget {
  const YourWalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Wallet',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const Scaffold(body: Center(child: Text('Khung dự án'))),
    );
  }
}
