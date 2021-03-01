import 'package:flutter_modular/flutter_modular.dart';

import 'bloc/wrapper_bloc.dart';
import 'wrapper_page.dart';

class WrapperModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => WrapperBloc),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => WrapperPage()),
      ];

  static Inject get to => Inject<WrapperModule>.of();
}
