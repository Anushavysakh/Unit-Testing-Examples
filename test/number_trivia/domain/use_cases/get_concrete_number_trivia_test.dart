import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/respositories/number_trivia_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_architecture_learning/features/number_trivia/domain/use_cases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia? usecase;
   MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository!);
  });
  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: 'test', number: 1);
  test('Should get trivia for the number from the repository', () async {
    when(mockNumberTriviaRepository!.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => Right(tNumberTrivia));
    final result = await usecase!(Params(number: tNumber));
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository?.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });

}
