import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pizza_repository/pizza_repository.dart';

part 'get_pizza_event.dart';
part 'get_pizza_state.dart';

class GetPizzaBloc extends Bloc<GetPizzaEvent, GetPizzaState> {
  PizzaRepo pizzaRepo;
  GetPizzaBloc(this.pizzaRepo) : super(GetPizzaInitial()) {
    on<GetPizza>((event, emit) async {
      emit(GetPizzaLoading());
      try {
        List<Pizza> pizzas = await pizzaRepo.getPizza();
        emit(GetPizzaSuccess(pizzas));
      } catch (e) {
        emit(GetPizzaFailure());
      }
    });
  }
}
