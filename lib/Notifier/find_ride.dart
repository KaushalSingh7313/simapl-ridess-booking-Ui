import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'find_ride.g.dart';

@riverpod
class FindRide extends _$FindRide {
  Future<void> fetchData() async {
    print('fetching data');
    state = AsyncValue.loading();
    // Simulate data fetching
    await Future.delayed(const Duration(seconds: 5));
    state = const AsyncValue.data(true);
  }

  @override
  FutureOr<void> build() async {
    return fetchData();
  }
}
