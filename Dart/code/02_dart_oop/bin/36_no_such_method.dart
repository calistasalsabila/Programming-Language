import 'dart:mirrors';

abstract class CategoryRepo {
  name(String name);
  id(String id);
  quantity(int quantity);
}

class Repo extends CategoryRepo {
  final String _name;
  Repo(this._name);

  // It is not mandatory to implement name, id, and quantity explicitly because
  // all unimplemented method calls will be intercepted by noSuchMethod.
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

  // Error if not implemented in abstract class
  // Works only if the class is not abstract
  // repo.hahahha(1);


}

// output
// SELECT * FROM one WHERE id = '1'

// See the previous commit for not implemented abstract class
