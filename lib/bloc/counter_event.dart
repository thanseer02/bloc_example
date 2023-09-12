part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
}
class increment extends CounterEvent{}

class decrement extends CounterEvent{}
