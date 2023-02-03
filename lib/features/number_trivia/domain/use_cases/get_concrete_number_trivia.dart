import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_architecture_learning/core/error/failures.dart';
import 'package:tdd_architecture_learning/core/usecase/usecase.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/respositories/number_trivia_repository.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, int> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(
    Params params,
  ) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({required this.number}) : super([number]);

  @override
  List<Object?> get props => throw UnimplementedError();
}
