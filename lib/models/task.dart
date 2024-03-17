class TaskModel {
  late String description;
  late List<TaskModel> listTask;
  bool taskCompleted = false;

  TaskModel({required this.description, required this.taskCompleted});

  TaskModel.emty() {
    this.description = "";
    this.taskCompleted = false;
    this.listTask = [
      TaskModel(description: "description", taskCompleted: false),
      TaskModel(description: "description1", taskCompleted: false),
      TaskModel(description: "description2", taskCompleted: false),
    ];
  }
}
