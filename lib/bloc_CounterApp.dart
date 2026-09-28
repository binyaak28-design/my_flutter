import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter_app_bloc.dart';
import 'package:flutter_application_1/bloc/counter_app_event.dart';
import 'package:flutter_application_1/bloc/counter_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounterapp extends StatefulWidget {
  const BlocCounterapp({super.key});

  @override
  State<BlocCounterapp> createState() => _BlocCounterappState();
}

class _BlocCounterappState extends State<BlocCounterapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bloc Counter App")),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  context.read<SubBloc>().add(Increment());
                },
                icon: Icon(Icons.add),
              ),
              BlocBuilder<SubBloc, CounterAppState>(
                builder: (context, state) {
                  return Text("${state.count}");  
                },
              ),
              IconButton(
                onPressed: () {
                  context.read<SubBloc>().add(Decrement());
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
