import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'user_table.dart';

part 'user_database.g.dart';

@DriftDatabase(tables: [UserTable])
final class UserDatabase extends _$UserDatabase {
  UserDatabase([final QueryExecutor? executor])
    : super(
        executor ??
            NativeDatabase.createInBackground(File('path/to/your/database')),
      );
  @override
  int get schemaVersion => 1;
}
