import 'package:amazon_app/constants/global_variables.dart';
import 'package:amazon_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_app/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon clone',
        theme: ThemeData(
            scaffoldBackgroundColor: GlobalVariables.backgroundColor,
            colorScheme: const ColorScheme.light(
              primary: GlobalVariables.secondaryColor,
            ),
            appBarTheme: const AppBarTheme(
                elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const AuthScreen()
        // home: Scaffold(
        //   appBar: AppBar(title: const Text('Titulo')),
        //   body: Column(children: [
        //     const Center(
        //       child: Text('Meio'),
        //     ),
        //     Builder(builder: (context) {
        //       return ElevatedButton(
        //         onPressed: () {
        //           Navigator.pushNamed(context, AuthScreen.routeName);
        //         },
        //         child: const  Text('click')
        //       );
        //     })
        //   ],)
        // ),
        );
  }
}
