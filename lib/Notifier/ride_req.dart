import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'ride_req.g.dart';

@riverpod
class RequestRide extends _$RequestRide {
  Future<void> fetchData() async {
    print('fetching data');
    state = AsyncValue.loading();
    // Simulate data fetching
    await Future.delayed(const Duration(seconds: 500));
    state = const AsyncValue.data(true);
  }

  @override
  FutureOr<void> build() async {
    return fetchData();
  }
}
