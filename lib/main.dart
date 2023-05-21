import 'package:flutter/material.dart';
import 'package:restoguh/ui/restaurant_detail_page.dart';
import 'package:restoguh/ui/restaurant_list_page.dart';
import 'model/restaurant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RestaurantListPage.routeName,
      routes: {
        RestaurantListPage.routeName: (context) => const RestaurantListPage(),
        RestaurantDetailPage.routeName: (context) => RestaurantDetailPage(
            restaurant:
                ModalRoute.of(context)?.settings.arguments as Restaurant),
        // NewsListPage.routeName: (context) => const NewsListPage(),
        // ArticleDetailPage.routeName: (context) => ArticleDetailPage(
        //       article: ModalRoute.of(context)?.settings.arguments as Article,
        //     ),
      },
    );
  }
}
