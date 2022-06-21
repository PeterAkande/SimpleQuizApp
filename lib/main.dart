import 'package:common_entrance_app/app_state_manager.dart';
import 'package:common_entrance_app/navigation/app_router.dart';

//import 'models/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'screens/home_screen.dart';
import 'app_themes.dart';
import 'navigation/app_router.dart';

void main() => runApp(const SchoolingApp());

class SchoolingApp extends StatelessWidget {
  const SchoolingApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: EduAppTheme.light(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}