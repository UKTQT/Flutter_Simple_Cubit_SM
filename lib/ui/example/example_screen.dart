import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_cubit_sm/ui/example/cubit/example_cubit.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExampleCubit>(
      create: (context) => ExampleCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Example Screen"),
        ),
        body: Column(
          children: [
            BlocBuilder<ExampleCubit, ExampleState>(
              builder: (context, state) {
                return state.isLoading!
                    ? const CircularProgressIndicator()
                    : const Text("Başarılı");
              },
            ),
          ],
        ),
      ),
    );
  }
}
