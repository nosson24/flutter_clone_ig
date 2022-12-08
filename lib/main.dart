import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_ig/services/app_router/tabs_screen.dart';
import 'package:flutter_application_ig/pages/profile_page/bloc/profile_user_bloc.dart';
import 'package:flutter_application_ig/services/product_repos/product_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // final storage = await HydratedStorage.build(
  //   storageDirectory: await getApplicationDocumentsDirectory(),
  // );
  runApp(const MyApp());

  // HydratedBlocOverrides.runZoned(
  //   () => runApp(const MyApp(
  //       // appRouter: AppRouter(),
  //       )),
  //   storage: storage,
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  // final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    final profileUserBloc = BlocProvider<ProfileUserBloc>(
        create: (context) => ProfileUserBloc(
              productRepositoy: ProductRepositoy(),
            ));

    return
         MultiBlocProvider(
          providers: [
            profileUserBloc,
          ],
          child: const
        MaterialApp(
      title: 'Flutter Demo',
      
      // theme: ThemeData.dark(),
      home: TabsScreen(),
      // onGenerateRoute: appRouter.onGenerateRoute,
    ),
    );
  }
}
