import 'package:apotek_mobile/shared/shared.dart';
import 'package:apotek_mobile/ui/pages/pages.dart';
import 'package:apotek_mobile/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(primary: mainColor)),
      // theme: ParcelAppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/product': (context) => ProductPage(),
        '/consultant-list': (context) => Consultant(),
        '/detail-doctor': (context) => DetailDoctor(),
        '/payment': (context) => PaymentPage(),
        '/success': (context) => SuccessPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
