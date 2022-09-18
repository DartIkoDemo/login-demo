import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/extensions/stacktrace_extensions.dart';

class CustomBlocObserver extends BlocObserver {
  CustomBlocObserver();

  @override
  void onCreate(BlocBase blocBase) {
    log('${blocBase.runtimeType} created');
    super.onCreate(blocBase);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('${bloc.runtimeType} received\n'
        '  event:     ${_toString(event)}');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    final nextState = transition.nextState;
    String? from, to;

    from = _toString(transition.currentState);
    to = _toString(nextState);

    String message = "${bloc.runtimeType}'s state changed\n"
        '  From:      $from\n'
        '  To:        $to\n';

    message += '  By:        ${_toString(transition.event)}';
    log(message);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('${bloc.runtimeType} failed\n'
        '  error:  $error\n'
        '  ${stackTrace.toStringShort(indent: "  ")}');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase blocBase) {
    log('${blocBase.runtimeType} closed');
    super.onClose(blocBase);
  }

  String? _toString<T>(T object) {
    if (object == null) return null;
    return RegExp('[a-zA-Z].*').firstMatch(object.runtimeType.toString())?[0];
  }
}
