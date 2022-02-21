
import 'package:flutter_boilerplate/modules/splash/splash_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final viewModelProvider = ChangeNotifierProvider<SplashPageViewModel>(
      (ref) => SplashPageViewModel(),
);

class SplashPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(viewModelProvider);
    ref.listen(viewModelProvider, (SplashPageViewModel model) async {

    });
    return SplashPageContents(
      viewModel: viewModel
    );
  }
}

class SplashPageContents extends StatelessWidget {
  const SplashPageContents(
      {Key? key, required this.viewModel})
      : super(key: key);
  final SplashPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Splash',
              ),
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}