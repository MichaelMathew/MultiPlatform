part of 'counter_bloc.dart';

abstract class CounterEvent {
  const CounterEvent();

}

class AddCart extends CounterEvent {
  final Product product;
  
  AddCart({required this.product});
}

