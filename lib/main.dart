import 'package:flutter/material.dart';
import 'package:input/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final focus = FocusScope.of(context);
        final focusedChild = focus.focusedChild;

        if (focusedChild != null && !focusedChild.hasPrimaryFocus) {
          focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          colorSchemeSeed: Colors.blue,
          // primarySwatch: Colors.red, deprecated
          useMaterial3: true,
        ),
        home: HomePage(),
        routes: appRoutes,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final keys = appRoutes.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: keys.length,
        itemBuilder: (_, index) {
          final routeName = keys[index];
          return ListTile(
            title: Text(routeName),
            onTap: () => Navigator.pushNamed(context, routeName),
          );
        },
      ),
    );
  }
}
