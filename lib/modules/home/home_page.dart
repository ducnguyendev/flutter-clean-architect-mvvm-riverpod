import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_view_model.dart';
import 'package:get/get.dart';

final viewModelProvider = ChangeNotifierProvider<HomePageViewModel>(
      (ref) => HomePageViewModel(),
);

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeModel = ref.watch(viewModelProvider);
    ref.listen(viewModelProvider, (HomePageViewModel model) async {
    });
    return HomePageContents(
      viewModel: homeModel
    );
  }
}

class HomePageContents extends StatelessWidget {
  const HomePageContents(
      {Key? key, required this.viewModel})
      : super(key: key);
  final HomePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Home'.tr,
              ),
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}