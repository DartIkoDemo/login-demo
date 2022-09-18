import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/core/locator.dart';

class BlocProvider1<TBloc extends BlocBase<Object>> extends StatelessWidget {
  final Widget child;
  final void Function(TBloc)? onBlocCreated;
  final bool? lazy;
  final bool reuseExisting;

  const BlocProvider1({
    super.key,
    required this.child,
    this.onBlocCreated,
    this.lazy,
    this.reuseExisting = true,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => _createBlocProvider<TBloc>(
        context: context,
        child: child,
        onBlocCreated: onBlocCreated,
        lazy: lazy,
        reuseExisting: reuseExisting,
      ),
    );
  }
}

class BlocProvider2<TBloc1 extends BlocBase<Object>,
    TBloc2 extends BlocBase<Object>> extends StatelessWidget {
  final Widget child;
  final void Function(TBloc1)? onBloc1Created;
  final void Function(TBloc2)? onBloc2Created;
  final bool? lazy;
  final bool reuseExisting;

  const BlocProvider2({
    super.key,
    required this.child,
    this.onBloc1Created,
    this.onBloc2Created,
    this.lazy,
    this.reuseExisting = true,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => MultiBlocProvider(
        providers: [
          _createBlocProvider<TBloc1>(
            context: context,
            onBlocCreated: onBloc1Created,
            lazy: lazy,
            reuseExisting: reuseExisting,
          ),
          _createBlocProvider<TBloc2>(
            context: context,
            onBlocCreated: onBloc2Created,
            lazy: lazy,
            reuseExisting: reuseExisting,
          ),
        ],
        child: child,
      ),
    );
  }
}

class BlocProviderValue1<TBloc extends BlocBase<Object>>
    extends StatelessWidget {
  final Widget child;
  final TBloc bloc;
  final void Function(TBloc)? onBlocProvided;

  const BlocProviderValue1({
    super.key,
    required this.child,
    required this.bloc,
    this.onBlocProvided,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => _provideBlocValue<TBloc>(
        child: child,
        bloc: bloc,
        onBlocProvided: onBlocProvided,
      ),
    );
  }
}

class BlocProviderValue2<TBloc1 extends BlocBase<Object>,
    TBloc2 extends BlocBase<Object>> extends StatelessWidget {
  final Widget child;
  final TBloc1 bloc1;
  final TBloc2 bloc2;
  final void Function(TBloc1)? onBloc1Provided;
  final void Function(TBloc2)? onBloc2Provided;

  const BlocProviderValue2({
    super.key,
    required this.child,
    required this.bloc1,
    required this.bloc2,
    this.onBloc1Provided,
    this.onBloc2Provided,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => MultiBlocProvider(
        providers: [
          _provideBlocValue<TBloc1>(
              bloc: bloc1, onBlocProvided: onBloc1Provided),
          _provideBlocValue<TBloc2>(
              bloc: bloc2, onBlocProvided: onBloc2Provided),
        ],
        child: child,
      ),
    );
  }
}

BlocProvider<TBloc> _createBlocProvider<TBloc extends BlocBase<Object>>({
  required BuildContext context,
  required bool reuseExisting,
  void Function(TBloc)? onBlocCreated,
  bool? lazy = true,
  Widget? child,
}) {
  if (reuseExisting) {
    try {
      final TBloc bloc = context.read<TBloc>();
      log('Context already contains a Bloc/BlocBase of type $TBloc');
      onBlocCreated?.call(bloc);
      return BlocProvider.value(value: bloc, child: child);
    } on ProviderNotFoundException catch (_) {}
  }
  return BlocProvider(
    create: (BuildContext context) {
      final TBloc bloc = getIt<TBloc>();
      onBlocCreated?.call(bloc);
      return bloc;
    },
    lazy: lazy ?? true,
    child: Builder(builder: (context) => child ?? const SizedBox.shrink()),
  );
}

BlocProvider<TBloc> _provideBlocValue<TBloc extends BlocBase<Object>>({
  required TBloc bloc,
  Widget? child,
  void Function(TBloc)? onBlocProvided,
}) {
  onBlocProvided?.call(bloc);
  return BlocProvider.value(value: bloc, child: child);
}
