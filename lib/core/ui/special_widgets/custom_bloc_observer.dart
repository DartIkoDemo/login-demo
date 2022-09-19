import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/extensions/stacktrace_extensions.dart';

class CustomBlocObserver extends BlocObserver {
  CustomBlocObserver();

  @override
  void onCreate(BlocBase bloc) {
    log('created', name: "${bloc.runtimeType}");
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log(
      'received\n'
      '  event:     ${_toString(event)}',
      name: "${bloc.runtimeType}",
    );
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    final nextState = transition.nextState;
    String? from, to;

    from = _toString(transition.currentState);
    to = _toString(nextState);

    String message = "state changed\n"
        '  From:      $from\n'
        '  To:        $to\n';

    message += '  By:        ${_toString(transition.event)}';
    log(message, name: '${bloc.runtimeType}');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(
      'failed\n'
      '  error:  $error\n'
      '  ${stackTrace.toStringShort(indent: "  ")}',
      name: "${bloc.runtimeType}",
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    log('closed', name: "${bloc.runtimeType}");
    super.onClose(bloc);
  }

  String? _toString<T>(T object) {
    if (object == null) return null;
    return RegExp('[a-zA-Z].*').firstMatch(object.runtimeType.toString())?[0];
  }
}
