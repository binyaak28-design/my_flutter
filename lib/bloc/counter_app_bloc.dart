import 'package:flutter_application_1/bloc/counter_app_event.dart';
import 'package:flutter_application_1/bloc/counter_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubBloc extends Bloc<CounterEvent,CounterAppState>{
  SubBloc():super(CounterAppInitial())
  {
    on<Increment>((event,emit){
     var crrent_State=state.count;
     return emit(CounterAppState(count: crrent_State+1));
    });

    on<Decrement>((event,emit){
      var currentDec_state=state.count;
return emit(CounterAppState(count: currentDec_state-1));
    });

    
    }
  
}