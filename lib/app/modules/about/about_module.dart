import 'package:flutter_modular/flutter_modular.dart';

import 'about_page.dart';
import 'bloc/about_bloc.dart';

class AboutModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AboutBloc),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => AboutPage()),
      ];

  static Inject get to => Inject<AboutModule>.of();
}
