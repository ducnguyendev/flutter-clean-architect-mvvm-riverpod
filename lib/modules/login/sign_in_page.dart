import 'package:flutter_boilerplate/modules/login/sign_in_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final signInModelProvider = ChangeNotifierProvider<SignInViewModel>(
      (ref) => SignInViewModel(),
);

class SignInPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInModel = ref.watch(signInModelProvider);
    ref.listen(signInModelProvider, (SignInViewModel model) async {
      if (model.error != null) {
        // await showExceptionAlertDialog(
        //   context: context,
        //   title: Strings.signInFailed,
        //   exception: model.error,
        // );
      }
    });
    return SignInPageContents(
      viewModel: signInModel
    );
  }
}

class SignInPageContents extends StatelessWidget {
  const SignInPageContents(
      {Key? key, required this.viewModel})
      : super(key: key);
  final SignInViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'sign_in'.tr,
              ),

            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}