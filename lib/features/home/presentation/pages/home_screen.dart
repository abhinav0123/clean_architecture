import 'package:clean_architecture/config/di/dependency_injection.dart';
import 'package:clean_architecture/features/home/presentation/bloc/get_response_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenWrapper extends StatelessWidget {
  const HomeScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetResponseCubit>(),
      child: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final GetResponseCubit getResponseCubit;
  @override
  void initState() {
    getResponseCubit = context.read<GetResponseCubit>();
    getResponseCubit.fetchPosts();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<GetResponseCubit, GetResponseState>(
          listener: (_, state) {
        state.maybeWhen(
          error: (message) {
            print('---------------------Error: $message');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          orElse: () {},
        );
      }, builder: (context, state) {
        return state.maybeWhen(loaded: (data) {
          return Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  data.map((e) {
                    return ListTile(
                      title: Text(e.title ?? ''),
                    );
                  });
                  return null;
                }),
          );
        }, orElse: () {
          return Container();
        });
      }),
    );
  }
}
