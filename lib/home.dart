import 'package:bloc_example/bloc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // context.read<CounterBloc>().add(increment());
              BlocProvider.of<CounterBloc>(context).add(decrement());
            },
            child: Icon(CupertinoIcons.minus),
          ),
          SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              // context.read<CounterBloc>().add(increment());
              BlocProvider.of<CounterBloc>(context).add(increment());
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Center(
              child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                      '${state.count}',style: TextStyle(fontSize: 30),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
