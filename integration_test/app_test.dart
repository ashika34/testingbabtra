import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/main.dart' as test_app;

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end to end test', () { 
    testWidgets('counter', (WidgetTester tester)async {
    await loadApp(tester);
    } );
  });
}
Future<void>loadApp(WidgetTester tester)async{
  test_app.main();
  await tester.pumpAndSettle();
  
}