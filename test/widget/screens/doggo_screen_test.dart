import 'package:doggo_dec_16/models/doggo_service/doggo_breed.dart';
import 'package:doggo_dec_16/screens/doggo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mock/mock_doggo_service.dart';

void main() {
  group("Doggo Screen", () {
    //

    testWidgets('contains all expected UI elements in initial state',
        (widgetTester) async {
      // Initialize services and environment required by widget
      MockDoggoService mockDoggoService = MockDoggoService();

      // Initialize widget
      await widgetTester.pumpWidget(
          MaterialApp(home: DoggoScreen(doggoService: mockDoggoService)));
      await widgetTester.pumpAndSettle();

      expect(
          find.widgetWithText(
              ElevatedButton, "Show doggo diversity list! \\o/"),
          findsOneWidget);
    });

    testWidgets('displays doggo diversity list when request button is pressed',
        (widgetTester) async {
      // Set up the services and environment resources needed for the widget being tested
      MockDoggoService mockDoggoService = MockDoggoService();

      // Init the widget
      await widgetTester.pumpWidget(MaterialApp(
          home: DoggoScreen(
        doggoService: mockDoggoService,
      )));
      await widgetTester.pumpAndSettle();

      // Perform tests

      // ----------------------------------------------------------------------
      // | Gather data that expresses the state change we expect
      // ----------------------------------------------------------------------
      List<DoggoBreed> mockDogBreeds =
          (await mockDoggoService.getDoggoDiversityData()).data!;

      // ----------------------------------------------------------------------
      // | Expect list not being displayed before button is pressed
      // ----------------------------------------------------------------------

      for (DoggoBreed mockDogBreed in mockDogBreeds) {
        expect(find.widgetWithText(ListTile, mockDogBreed.name), findsNothing);
      }

      // Press button
      await widgetTester.tap(find.widgetWithText(
          ElevatedButton, "Show doggo diversity list! \\o/"));
      await widgetTester.pumpAndSettle();

      // ----------------------------------------------------------------------
      // | Expect list to be displayed after button press
      // ----------------------------------------------------------------------

      for (DoggoBreed mockDogBreed in mockDogBreeds) {
        expect(
            find.widgetWithText(ListTile, mockDogBreed.name), findsOneWidget);
      }
    });
  });
}