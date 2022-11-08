import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:product_shopping/entities/product.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {

      if (state is CounterInitial) {
        emit(CartRunning(cart: [(event as AddCart).product]));
      } else {
        if (event is AddCart) {
          List<Product> product = (state as CartRunning).cart;
          product.add(event.product);
          emit(CartRunning(cart: product));
        }
      }
    });
  }
}
