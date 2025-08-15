import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider: A simple provider that exposes a value.
final exampleProvider = Provider<String>((ref) => 'Hello from Provider!');

// StateProvider: A provider that exposes a mutable state that can be read and updated.
final counterStateProvider = StateProvider<int>((ref) => 0);

// FutureProvider: A provider that exposes an asynchronous value (Future).
final futureDataProvider = FutureProvider<String>((ref) async {
  await Future.delayed(
    const Duration(seconds: 2),
  ); // Simulate a network request
  return 'Data loaded from FutureProvider!';
});

// StreamProvider: A provider that exposes an asynchronous stream of values (Stream).
final streamDataProvider = StreamProvider<int>((ref) {
  return Stream.periodic(const Duration(seconds: 1), (count) => count).take(5);
});
