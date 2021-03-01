import 'dart:async';

import 'package:bloc/bloc.dart';

import 'about_event.dart';
import 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc(AboutState initialState) : super(initialState);

  AboutState get initialState => InitialAboutState();

  @override
  Stream<AboutState> mapEventToState(AboutEvent event) async* {
    // TODO: Add Logic
  }
}
