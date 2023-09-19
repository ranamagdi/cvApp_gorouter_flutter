import 'package:flutter/material.dart';
import './Screens/seound.dart';
import './Screens/details.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const Goroute());
}
/// The route configuration.
final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyApp();
      },
    ),
    GoRoute(
      path: '/details',
      builder: (BuildContext context, GoRouterState state) {
        return const Details();
      },
    ),
    GoRoute(
      path: '/profile',
      builder: (BuildContext context, GoRouterState state) {
        return const Secound();
      },
    ),

  ],
);
/// The main app.
class Goroute extends StatelessWidget {
  /// Constructs a [Goroute]
  const Goroute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,

    );
  }
}
// class MyFirst extends StatelessWidget {
//   const MyFirst({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//       // initialRoute: '/',
//       // routes: {
//       //   '/':(context)=>MyApp(),
//       //   '/secound':(context)=>Secound()
//       // },
//     );
//   }
// }


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        body: Center(
          child: Column(
          children: [
            Text("User name",style: TextStyle(color:Colors.teal )),
            TextFormField(),
            Text("Password",style: TextStyle(color:Colors.teal )),
            TextFormField(),
            ElevatedButton(onPressed: (){
              // Navigator.push(context,
              // MaterialPageRoute(builder: (context)=> const Secound())
              // );
              // Navigator.pushNamed(context, '/secound');
              context.go('/profile');
            }, child: Text('Login')),
          ],
        ),
    ),
      );
  }
}




