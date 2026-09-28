class CounterAppState {
  var count;
  CounterAppState({required this.count} );
  
}
class CounterAppInitial extends CounterAppState{

CounterAppInitial():super(count: 0);
} 