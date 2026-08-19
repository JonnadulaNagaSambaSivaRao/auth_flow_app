import 'package:flutter_test/flutter_test.dart';
import 'package:auth_flow_app/main.dart';
import 'package:auth_flow_app/services/auth_service.dart';

void main() {
  testWidgets('Auth Flow App loads successfully', (WidgetTester tester) async {
    // Create the authentication service.
    final authService = AuthService();

    // Build the application.
    await tester.pumpWidget(
      MyApp(
        authService: authService,
      ),
    );

    // Allow the initial frame to complete.
    await tester.pumpAndSettle();

    // Verify that the application is loaded.
    expect(find.byType(MyApp), findsOneWidget);
  });
}