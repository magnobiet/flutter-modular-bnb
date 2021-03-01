import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sgs/app/app_module.dart';
import 'package:sgs/app/modules/about/bloc/about_bloc.dart';
import 'package:sgs/app/modules/about/about_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(AboutModule());
  AboutBloc bloc;

  // setUp(() {
  //     bloc = AboutModule.to.get<AboutBloc>();
  // });

  // group('AboutBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<AboutBloc>());
  //   });
  // });
}
