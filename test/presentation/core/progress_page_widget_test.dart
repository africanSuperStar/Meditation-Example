import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ubunye_method/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ubunye_method/keys.dart';
import 'package:ubunye_method/presentation/routes/router.gr.dart' as app_router;
import 'package:ubunye_method/theme.dart';

class MockSignInFormBloc extends MockBloc<SignInFormEvent, SignInFormState> implements SignInFormBloc {}

class FakeSignInFormEvent extends Fake implements SignInFormEvent {}

class MockBuildContext extends Mock implements BuildContext {}

class MockHiveInterface extends Mock implements HiveInterface {}

class MockHiveBox extends Mock implements Future<Box> {}

class MockRouter extends Mock implements app_router.ProgressPageRoute {}

Future<String> pathProviderCallHandler(MethodCall methodCall) async {
  if (methodCall.method == 'getApplicationDocumentsDirectory') {
    return Future.value('./tmp');
  } else {
    return Future.error(
      'Method does not exist',
      StackTrace.fromString('Method does not exist'),
    );
  }
}

void main() {
  late app_router.Router _appRouter;
  late app_router.ProgressPageRoute _mockRouter;

  late MockHiveInterface _mockHiveInterface;
  late MockHiveBox _mockHiveBox;

  const pathProviderMethodChannel = MethodChannel('plugins.flutter.io/path_provider');

  setUpAll(() async {
    _appRouter = app_router.Router();
    _mockRouter = MockRouter();

    _mockHiveInterface = MockHiveInterface();
    _mockHiveBox = MockHiveBox();

    pathProviderMethodChannel.setMockMethodCallHandler(pathProviderCallHandler);

    await _mockHiveInterface.initFlutter();

    registerFallbackValue<SignInFormState>(SignInFormState.initial());
    registerFallbackValue<SignInFormEvent>(FakeSignInFormEvent());
  });

  tearDownAll(() {
    pathProviderMethodChannel.setMockMethodCallHandler(null);
  });

  group('AppWidget', () {
    late SignInFormBloc _signInFormBloc;
    late BuildContext _context;

    setUp(() async {
      TestWidgetsFlutterBinding.ensureInitialized();

      _signInFormBloc = MockSignInFormBloc();
      _context = MockBuildContext();
    });

    testWidgets('Renders Correctly', (WidgetTester tester) async {
      when(() async => await _mockHiveInterface.openBox(any())).thenAnswer((invocation) async => await _mockHiveBox);

      when(() => _signInFormBloc.state).thenAnswer((_) => SignInFormState.initial());

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<SignInFormBloc>.value(value: _signInFormBloc),
          ],
          child: MaterialApp.router(
            title: "Ubunye Method",
            theme: generateMainTheme(),
            debugShowCheckedModeBanner: false,
            routeInformationProvider: PlatformRouteInformationProvider(
              initialRouteInformation: RouteInformation(),
            ),
            routerDelegate: _appRouter.delegate(
              initialRoutes: [_mockRouter.initialChildren?.first ?? app_router.ProgressPageRoute()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        ),
      );

      await tester.pump();
      expect(find.byKey(UbunyeMethodKeys.appWidget), findsOneWidget);
    });
  });
}
