import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ksh/logic/cubit/increment_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text("kshitij", style: TextStyle(fontSize: 30)),
        actions: [IconButton(icon: const Icon(Icons.menu), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 15, 25),
        child: BlocBuilder<IncrementCubit, IncrementState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Your number is ${state.count}"),
                SizedBox(height: 250),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        context.read<IncrementCubit>().increment();
                      },
                      child: Icon(Icons.add),
                      backgroundColor: Colors.blue,
                    ),

                    SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<IncrementCubit>().decrement();
                      },
                      child: Icon(Icons.remove),
                      backgroundColor: Colors.blue,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
