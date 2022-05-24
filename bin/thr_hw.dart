import 'dart:io';

List<Map<String, dynamic>> Students = [
  {"name": "Lamis", "age": 22, "id": 1000087, "pass": true, "Gpa": 4},
  {"name": "Fahad", "age": 28, "id": 100098, "pass": true, "Gpa": 5},
  {"name": "Lamia", "age": 23, "id": 100095, "pass": true, "Gpa": 4},
  {"name": "Ali", "age": 21, "id": 100093, "pass": false, "Gpa": 3}
];
void main() {
  for (var i = 0; i < 10; i++) {
    MsgForInput();
    var input = int.parse(stdin.readLineSync()!);
    selecteUser(inputUser: input);
  }
}

MsgForInput() {
  print("Pleas Select From This :");
  print("1:Show All Student");
  print("2:Search By Id");
  print("3:Delete User By Id ");
  print("4:Exite From App");
}

showAll() {
  print("**********************************************************");
  for (var student in Students) {
    print("--------------------------------------------------------");
    print(student);
  }
  print("**********************************************************");
}

selecteUser({int? inputUser}) {
  if (inputUser == 1) {
    showAll();
  } else if (inputUser == 2) {
    print("Enter Id :");
    var inputID = int.parse(stdin.readLineSync()!);
    searchById(id: inputID);
  } else if (inputUser == 3) {
    print("Enter Id :");
    var inputDl = int.parse(stdin.readLineSync()!);
    deletById(Dl: inputDl);
  } else if (inputUser == 4) {
    exit(0);
  }
}

searchById({int? id}) {
  for (var std in Students) {
    if (std["id"] == id) {
      print("--------------------------------------------------------");
      print(std);
      print("--------------------------------------------------------");
    }
  }
}

deletById({int? Dl}) {
  for (var std in Students) {
    if (std["id"] == Dl) {
      std.remove(Dl);
      print("You delete :");
      print("--------------------------------------------------------");
      print(std);
      print("--------------------------------------------------------");
    }
  }
}
