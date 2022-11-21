import 'package:flutter/material.dart';
import 'package:projeto_final_flutter/components/task.dart';
import 'package:projeto_final_flutter/data/task_inherited.dart';
import 'package:projeto_final_flutter/data/tesk_dao.dart';
import 'package:projeto_final_flutter/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(Icons.refresh))
        ],
        title: const Text('Tarefas'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 70),
        child: FutureBuilder<List<Task>>(
          future: TaskDao().findAll(),
          builder: ((context, snapshot) {
            List<Task>? itens = snapshot.data;
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Column(
                    children: [CircularProgressIndicator(), Text('carregando')],
                  ),
                );
                break;
              case ConnectionState.waiting:
                return Center(
                  child: Column(
                    children: [CircularProgressIndicator(), Text('carregando')],
                  ),
                );
                break;
              case ConnectionState.active:
                return Center(
                  child: Column(
                    children: [CircularProgressIndicator(), Text('carregando')],
                  ),
                );
                break;
              case ConnectionState.done:
                if (snapshot.hasData && itens != null) {
                  if (itens.isNotEmpty) {
                    return ListView.builder(
                        itemCount: itens.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Task tarefas = itens[index];
                          return tarefas;
                        });
                  }
                  return Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 128,
                        ),
                        Text(
                          'não a nem uma tarefa',
                          style: TextStyle(fontSize: 32),
                        )
                      ],
                    ),
                  );
                }
                return Text('erro ao carregar Tarefas');
            }
            return Text('erro desconhecido');
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          ).then((value) => setState(() {
                print('recarregando tela inicia');
              }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
