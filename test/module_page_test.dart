import 'package:dicodingacademy/provider/done_module_provider.dart';
import 'package:dicodingacademy/ui/module_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

Widget createHomeScreen() => ChangeNotifierProvider<DoneModuleProvider>(
      create: (context) => DoneModuleProvider(),
      child: const MaterialApp(
        home: ModulePage(),
      ),
    );

void main() {
  group('Module List Page Widget Test', () {
    testWidgets('Testing if ListView shows up', (WidgetTester tester) async {
      // Me-render widget
      await tester.pumpWidget(createHomeScreen());
      // Verifikasi apakah ditemukan satu widget ListView
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('Test Done Button', (tester) async {
      // Me-render widget
      await tester.pumpWidget(createHomeScreen());
      // Mencari ElevatedButton pertama kemudian melakukan gestur tap
      // Interaction : tap, longPress, drag, scroll, enterText, etc.
      await tester.tap(find.byType(ElevatedButton).first);
      // Rebuild tampilan karena perubahan state
      // Metode pumpAndSettle() sendiri merupakan metode pump() yang dipanggil secara berulang sampai tidak ada lagi frame yang harus di-build ulang. Sederhananya menunggu semua animasi selesai.
      await tester.pumpAndSettle();
      // Verifikasi apakah ditemukan 2 ikon done (Termasuk ikon done yang berada di AppBar)
      // Type of Matcher :
      // findsNothing : Tidak ada widget yang ditemukan.
      // findsOneWidget : Menemukan hanya satu widget.
      // findsWidgets : Menemukan satu atau beberapa widget.
      // findsNWidgets : Menemukan widget sejumlah N (N didefinisikan melalui parameter).
      expect(find.byIcon(Icons.done), findsNWidgets(2));
    });
  });
}
