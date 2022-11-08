part of 'counter_bloc.dart';

abstract class CounterState {
  const CounterState();
  
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CartRunning extends CounterState {
  List<Product> cart;

  CartRunning({required this.cart});
}
