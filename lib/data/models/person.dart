import 'package:hive/hive.dart';
/// Обычная моделька, в ней 2 поля, имя и токен
/// Тип должен быть уникальным в проекте
@HiveType(typeId: 0)
class Person extends HiveObject {

  // id поля должно быть уникально в рамках этой модели
  @HiveField(0)
  String name;

  @HiveField(1)
  String token;
}