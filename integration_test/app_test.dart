// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:logintest/home_view.dart';
import 'package:logintest/login_view.dart';
import 'package:logintest/main.dart' as app;
import 'package:logintest/round_button.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "Need to prototype user log in with credentials and get access into HomeView",
    (tester) async {
      //added our main app to tester
      app.main();
      //need to waite untill app settle
      await tester.pumpAndSettle();
      //create finders for email, password and the log in button
      final emailFromFeild = find.byType(TextFormField).first;
      final passwordFromFeild = find.byType(TextFormField).last;
      final loginButton = find.byKey(const Key("signInButton"));

      //enter texts for email and password
      await tester.enterText(emailFromFeild, "flutterTest@gmail.com");
      await tester.enterText(passwordFromFeild, "Test@123");
      await tester.pumpAndSettle();

      //tap log in button
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
    },
  );
}
