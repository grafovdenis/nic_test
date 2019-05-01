import 'package:flutter/material.dart';
import 'package:nic_test/screens/home.dart';
import 'package:nic_test/screens/installment_schedule.dart';
import 'package:nic_test/screens/investments.dart';
import 'package:nic_test/screens/payment_schedule.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/myInvestments': (context) => MyInvestmentsPage(),
        '/paymentSchedule': (context) => PaymentSchedule(),
        '/installmentSchedule': (context) => InstallmentSchedule()
      },
    );
  }
}

