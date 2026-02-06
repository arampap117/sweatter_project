import 'package:drift/drift.dart';

class UserTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get email => text().unique()();

  TextColumn get name => text().unique()();

  TextColumn get passwordHash => text()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
