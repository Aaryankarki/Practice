// increment_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'increment_state.dart';

class IncrementCubit extends Cubit<IncrementState> {
  IncrementCubit() : super(const IncrementState(0, "Initial state"));

  void increment() {
    emit(IncrementState(state.count + 1, "Incremented to ${state.count + 1}"));
  }

  void decrement() {
    if (state.count > 0) {
      emit(IncrementState(state.count - 1, "Decremented to ${state.count - 1}"));
    } else {
      emit(IncrementState(0, "Cannot decrement below 0"));
    }
  }
// this is for reset after it workout

  void reset() {
    emit(const IncrementState(0, "Counter reset"));
  }
}