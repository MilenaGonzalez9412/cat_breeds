import 'package:cat_breeds/features/landing/presentation/controllers/providers.dart';
import 'package:cat_breeds/features/landing/presentation/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('shows "No cat breeds found" when list is empty', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          filteredBreedsProvider.overrideWith((ref) => AsyncValue.data([])),
        ],
        child: MaterialApp(home: LandingPage()),
      ),
    );

    expect(find.text('No cat breeds found '), findsOneWidget);
  });

  testWidgets('shows error message when provider errors', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          filteredBreedsProvider.overrideWith(
            (ref) => AsyncValue.error('error', StackTrace.empty),
          ),
        ],
        child: MaterialApp(home: LandingPage()),
      ),
    );

    expect(find.textContaining('Error: error'), findsOneWidget);
  });

  testWidgets('shows loading indicator when loading', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          filteredBreedsProvider.overrideWith(
            (ref) => const AsyncValue.loading(),
          ),
        ],
        child: MaterialApp(home: LandingPage()),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
