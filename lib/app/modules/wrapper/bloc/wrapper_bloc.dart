import 'dart:async';

import 'package:bloc/bloc.dart';

import 'wrapper_event.dart';
import 'wrapper_state.dart';

class WrapperBloc extends Bloc<WrapperEvent, WrapperState> {
  WrapperBloc(WrapperState initialState) : super(initialState);

  WrapperState get initialState => InitialWrapperState();

  @override
  Stream<WrapperState> mapEventToState(WrapperEvent event) async* {
    // TODO: Add Logic
  }
}
