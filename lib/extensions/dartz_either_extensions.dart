import 'package:dartz/dartz.dart';

extension DartzEitherExtensions<L, R> on Either<L, R> {
  L get asLeft => (this as Left<L, R>).value;

  R get asRight => (this as Right<L, R>).value;
}
