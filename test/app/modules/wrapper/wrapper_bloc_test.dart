import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sgs/app/app_module.dart';
import 'package:sgs/app/modules/wrapper/bloc/wrapper_bloc.dart';
import 'package:sgs/app/modules/wrapper/wrapper_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(WrapperModule());
  WrapperBloc bloc;

  // setUp(() {
  //     bloc = WrapperModule.to.get<WrapperBloc>();
  // });

  // group('WrapperBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<WrapperBloc>());
  //   });
  // });
}
