import 'package:dailyshop/loading.dart';
import 'package:dailyshop/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyShop());
}

class DailyShop extends StatefulWidget {
  const DailyShop({super.key});

  @override
  State<DailyShop> createState() => _DailyShopState();
}

class _DailyShopState extends State<DailyShop> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DailyShop",
      home: LoadingScreen(),
    );
  }
}
