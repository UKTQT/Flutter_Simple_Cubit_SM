import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'example_state.dart';

class ExampleCubit extends Cubit<ExampleState> {
  ExampleCubit() : super(const ExampleState());

  Future<void> exampleFunction() async {
    emit(state.copyWith(isLoading: true));
    print("Success");
    emit(state.copyWith(isLoading: false));
  }
}
