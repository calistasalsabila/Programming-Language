import 'dart:mirrors';



class Repo  {
  final String _name;
  Repo(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "SELECT * FROM $_name WHERE $column = '$value'";
    print(sql);
    return null;
  }
}



void main() {
  dynamic repo = Repo("one");
  repo.id(1);
}

// output
// SELECT * FROM one WHERE id = '1'


