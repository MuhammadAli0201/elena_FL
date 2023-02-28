import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/routes/routes.dart';
import 'modules/logic/bloc/add_admin_bloc/add_admin_bloc.dart';
import 'modules/logic/bloc/edit_admin_bloc/edit_admin_bloc.dart';
import 'modules/logic/bloc/sign_up_bloc/sign_up_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => SignUpBloc()),
      BlocProvider(create: (context) => AddAdminBloc()),
      BlocProvider(create: (context) => EditAdminBloc()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: RouteTo.splash,
      theme: ThemeData(
        fontFamily: 'Oxygen',
      ),
    ),
  ));
}
