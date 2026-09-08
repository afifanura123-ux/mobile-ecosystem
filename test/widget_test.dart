import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/modul_02/academic_dashboard_screen.dart';

void main() {
  testWidgets('Dashboard akademik tampil dengan benar', (
    WidgetTester tester,
  ) async {
    // Set ukuran layar test agar cukup lebar
    tester.view.physicalSize = const Size(1280, 1920);
    tester.view.devicePixelRatio = 1.0;

    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(
      const MaterialApp(
        home: AcademicDashboardScreen(),
      ),
    );

    // Tunggu proses render dan layout selesai penuh
    await tester.pumpAndSettle();

    // Verifikasi teks yang ada pada halaman
    expect(find.text('Dashboard Akademik & Proyek'), findsOneWidget);
    expect(find.textContaining('Afifa Nur Fitria'), findsOneWidget);
  });
}