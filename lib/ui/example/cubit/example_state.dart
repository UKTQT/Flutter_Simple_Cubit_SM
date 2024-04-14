part of 'example_cubit.dart';

final class ExampleState extends Equatable {
  final bool? isLoading;

  const ExampleState({this.isLoading});

  @override
  List<Object?> get props => [isLoading];

  ExampleState copyWith({bool? isLoading}) {
    return ExampleState(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
