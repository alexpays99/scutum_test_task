import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scutum_test_task/feature/tasks/presentation/bloc/tasks_bloc.dart';
import 'package:scutum_test_task/feature/weather/presentation/cubit/weather_cubit.dart';
import 'core/injector.dart' as di;
import 'navigation/go_rounter.dart';

final _router = di.getIt.get<GoRouterNavigation>().initGoRoute();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.Injector.initDependencyInjection();
  await di.Injector.registerHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.getIt<TasksBloc>(),
        ),
        BlocProvider(
          create: (context) => di.getIt<WeatherCubit>(),
        ),
      ],
      child: MaterialApp.router(
        key: GlobalKey(),
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
