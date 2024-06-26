import 'package:simple/src/router/routerr.dart';
import 'package:simple/src/view/screen/dash_board_screen.dart';
import 'package:simple/src/viewmodel/address_viewmodel.dart';
import 'package:simple/src/viewmodel/auth_viemodel.dart';
import 'package:simple/src/viewmodel/bottom_navigate_provider.dart';
import 'package:simple/src/viewmodel/cart_viewmodel.dart';
import 'package:simple/src/viewmodel/product_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
        ChangeNotifierProvider(create: (_) => CartViewModel()),
        ChangeNotifierProvider(create: (_) => AddressViewModel()),
        ChangeNotifierProvider(
            create: (_) => ProductViewModel()..getListProduct()),
        ChangeNotifierProvider(create: (_) => AuthViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: false,
        ),
        onGenerateRoute: Routerr.onGenerateRouter,
        home: DashBoardScreen(),
      ),
    );
  }
}
