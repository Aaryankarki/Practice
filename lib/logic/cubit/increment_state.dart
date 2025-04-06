// increment_state.dart
part of 'increment_cubit.dart';

class IncrementState extends Equatable {
  final int count;
  final String message;
  
  const IncrementState(this.count, this.message);
  
  @override
  List<Object> get props => [count, message];
}