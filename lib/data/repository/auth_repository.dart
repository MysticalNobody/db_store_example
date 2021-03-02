import 'package:db_store_example/data/models/person.dart';
import 'package:hive/hive.dart';

class AuthRepository {
  AuthRepository() {
    box = Hive.box('personBox');
  }
  Box box;

  Person getPerson() {
      // берём из кэша
    Person person = box.get('person');
    if (person == null) {
      // если в кэше нет, то берём из апи
      // после того, как получили из апи, записываем в кэш
      setPerson();
    }
    return person;
  }

  Future<void> setPerson(Person person) async {
    await box.put('person', person);
  }
}
