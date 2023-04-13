import 'package:flutter/material.dart';
import 'package:to_do_list/language/to_do_list_text.dart';
import 'package:to_do_list/widget/add_task_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ToDoListText.appBarTitle),
      ),
      body: Padding(
        padding:
            //siempre múltiplos de 8
            const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: const AddTaskForm()),
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Column(
                            children: const [
                              Text(
                                'data',
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Fecha',
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
