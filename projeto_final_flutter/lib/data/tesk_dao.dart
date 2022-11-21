import 'package:flutter/cupertino.dart';
import 'package:projeto_final_flutter/components/task.dart';
import 'package:projeto_final_flutter/data/database.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tebleSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER,'
      '$_imageUrl TEXT )';

  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'dificudade';
  static const String _imageUrl = 'imagem';

  seve(Task tarefa) async {
    print('inciado o save');
    final Database bancoDeDados = await getDatatabase();
    var itemExists = await find(tarefa.nome);
    Map<String, dynamic> taskMap = toMap(tarefa);
    if (itemExists.isEmpty) {
      print('atarefa não existe');
      return await bancoDeDados.insert(_tablename, taskMap);
    } else {
      print('a terefa ja esistia ');
      return await bancoDeDados.update(_tablename, taskMap,
          where: '$_name', whereArgs: [tarefa.nome]);
    }
  }

  Map<String, dynamic> toMap(Task tarefa) {
    print('convertendo tarefa em mep: ');
    final Map<String, dynamic> mapaDetarefas = Map();
    mapaDetarefas[_name] = tarefa.nome;
    mapaDetarefas[_difficulty] = tarefa.dificuldade;
    mapaDetarefas[_imageUrl] = tarefa.foto;
    print('mapa de tarefas : $mapaDetarefas');
    return mapaDetarefas;
  }

  Future<List<Task>> findAll() async {
    final Database bancoDeDados = await getDatatabase();
    final List<Map<String, dynamic>> result =
        await bancoDeDados.query(_tablename);
    print('procurando dados no banco de dados. encontrado : $result ');
    return toList(result);
  }

  List<Task> toList(List<Map<String, dynamic>> listaDeTarefas) {
    print('covertendo to list:');
    final List<Task> terefas = [];
    for (Map<String, dynamic> linha in listaDeTarefas) {
      final Task tarefa =
          Task(linha[_name], linha[_imageUrl], linha[_difficulty]);
      terefas.add(tarefa);
    }
    print('listar daterafas: $terefas');
    return terefas;
  }

  Future<List<Task>> find(String nomeDaTarefa) async {
    print('acessando o find: ');
    final Database bancoDeDados = await getDatatabase();
    final List<Map<String, dynamic>> result = await bancoDeDados.query(
      _tablename,
      where: '$_name = ?',
      whereArgs: [nomeDaTarefa],
    );
    print('Tarefa encontrada: ${toList(result)}');
    return toList(result);
  }

  delete(String nomeDaTarefa) async {
    print('deletar tarefa $nomeDaTarefa');
    final Database bancoDedados = await getDatatabase();
    return bancoDedados
        .delete(_tablename, where: '$_name = ?', whereArgs: [nomeDaTarefa]);
  }
}
