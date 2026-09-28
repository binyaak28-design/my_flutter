import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'adding_event.dart';
part 'adding_state.dart';

class AddingBloc extends Bloc<AddingEvent, AddingState> {
  AddingBloc() : super(AddingInitial()) {
    on<AddingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
