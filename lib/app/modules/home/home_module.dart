import 'package:flutter_modular/flutter_modular.dart';
import 'package:sgs/app/modules/home/internal_page.dart';

import 'bloc/home_bloc.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeBloc),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/internal-page', child: (_, args) => InternalPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
