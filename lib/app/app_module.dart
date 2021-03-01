import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sgs/app/app_widget.dart';
import 'package:sgs/app/modules/about/about_module.dart';
import 'package:sgs/app/modules/wrapper/wrapper_module.dart';

import 'bloc/app_bloc.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppBloc),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: WrapperModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/about', module: AboutModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
