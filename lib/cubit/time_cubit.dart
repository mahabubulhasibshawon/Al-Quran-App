import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeCubit extends Cubit<DateTime> {
  Timer? _timer;

  TimeCubit() : super(DateTime.now()) {
    // Start the timer when Cubit is created
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      emit(DateTime.now());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}