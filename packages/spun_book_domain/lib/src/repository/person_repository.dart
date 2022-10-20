import '../entity/person.dart';

abstract class PersonRepository {
  List<Person> search(String query);
}
