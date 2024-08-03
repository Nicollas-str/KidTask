import 'package:kidtask/models/task.dart';
import 'package:kidtask/repositories/task_repository.dart';

void main(){
  TaskRepository tarefa = TaskRepository();

  tarefa.addTask(Task(name: "Nicollas", timeLimit: DateTime(2024, 08, 03), point: 10, status: "Em andamento"));
  tarefa.addTask(Task(name: "Outro", timeLimit: DateTime(2024, 08, 03), point: 12, status: "Finalizada"));

  tarefa.getAllTasks();
}