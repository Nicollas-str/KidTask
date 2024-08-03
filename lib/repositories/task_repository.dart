import 'package:kidtask/models/task.dart';

class TaskRepository{
  
  //Armazena instâncias da classe Task
  List<Task> _tasks = [];

  void addTask(Task task) {
    _tasks.add(task);
  }

  //Encontra uma task pelo seu id
  Task? getTask(int id) {
    return _tasks.firstWhere((task) => task.id == id, orElse: () => Task());
  }

  //Atualiza uma task pelo id
  void updateTask(int id, {String? name, DateTime? timeLimit, int? point, String? status}){
    Task? task = getTask(id);
    if (task != null){
      if(name != null) task.name = name;
      if(timeLimit != null) task.timeLimit = timeLimit;
      if(point != null) task.point = point;
      if(status != null) task.status = status;
    }
  }

  //Deleta uma task pelo id
  void deleteTask(int id){
    _tasks.removeWhere((task) => task.id == id);
  }

  //Lista todas tarefas
  List<Task> getAllTasks() {
    List<Task> tasks = List.unmodifiable(_tasks); 
    tasks.forEach((task) {
      print("ID: ${task.id}, Nome: ${task.name}, Limite de Tempo: ${task.timeLimit}, Pontos: ${task.point}, Status: ${task.status}");
    });
    return tasks;
  }

}