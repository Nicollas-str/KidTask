class Task {
  
  static int _lastid = 0; //Incrementa baseado no ultimo id
  
  int _id;
  String _name;
  DateTime _timeLimit;
  int _point;
  String _status;

//Construtor
  Task({
    String name = "",
    DateTime? timeLimit,
    int point = 0,
    String status = "",
  }) : _id = ++_lastid,
      _name = name,
      _timeLimit = timeLimit ?? DateTime.now(),
      _point = point,
      _status = status;


//Set
  set name(String name) => _name = name;
  set timeLimit(DateTime timeLimit) => _timeLimit = timeLimit;
  set point(int point) => _point = point;
  set status(String status) => _status = status;

  void setTask(String name, DateTime timeLimit, int point, String status){
    _name = name;
    _timeLimit = timeLimit;
    _point = point;
    _status = status;
  }

//Get
  int get id => _id;
  String get name => _name;
  DateTime get timeLimit => _timeLimit;
  int get point => _point;
  String get status => _status;

  Map<String, dynamic> getTask(){
    return {
      'id': _id,
      'name': _name,
      'timeLimit': _timeLimit,
      'points': _point,
      'status': _status
    };
  }
}