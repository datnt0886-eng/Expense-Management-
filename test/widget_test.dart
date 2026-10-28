import 'package:flutter_test/flutter_test.dart';
import 'package:yourwallet/main.dart';

void main() {
  testWidgets('app khởi động được', (tester) async {
    await tester.pumpWidget(const YourWalletApp());
    expect(find.text('Khung dự án'), findsOneWidget);
  });
}
