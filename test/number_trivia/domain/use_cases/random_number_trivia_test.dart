import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/respositories/number_trivia_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/use_cases/get_concrete_number_trivia.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/use_cases/random_number_trivia.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/use_cases/random_number_trivia.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/use_cases/random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia? usecase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository!);
  });

  final tNumberTrivia = NumberTrivia(text: 'test', number: 1);
  test('Should get trivia  from the repository', () async {
    when(mockNumberTriviaRepository!.getRandomNumberTrivia(any))
        .thenAnswer((_) async => Right(tNumberTrivia));
    final result = await usecase!(NoParams());
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository?.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
