import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import 'package:uuid/uuid.dart';

import '../../../../config/constants/hive_table_constant.dart';
import '../../domain/entity/user_entity.dart';

part 'auth_hive_model.g.dart';

final authHiveModelProvider = Provider(
  (ref) => AuthHiveModel.empty(),
);

@HiveType(typeId: HiveTableConstant.userTableId)
class AuthHiveModel {
  @HiveField(0)
  final String userId;

  @HiveField(1)
  final String fname;

  @HiveField(2)
  final String lname;

  @HiveField(3)
  final String phone;

  @HiveField(6)
  final String username;

  @HiveField(7)
  final String password;

  // Constructor
  AuthHiveModel({
    String? userId,
    required this.fname,
    required this.lname,
    required this.phone,
    required this.username,
    required this.password,
  }) : userId = userId ?? const Uuid().v4();

  // empty constructor
  AuthHiveModel.empty()
      : this(
          userId: '',
          fname: '',
          lname: '',
          phone: '',
          username: '',
          password: '',
        );

  // Convert Hive Object to Entity
  UserEntity toEntity() => UserEntity(
        id: userId,
        fname: fname,
        lname: lname,
        phone: phone,
        username: username,
        password: password,
      );

  // Convert Entity to Hive Object
  AuthHiveModel toHiveModel(UserEntity entity) => AuthHiveModel(
        userId: const Uuid().v4(),
        fname: entity.fname,
        lname: entity.lname,
        phone: entity.phone,
        username: entity.username,
        password: entity.password,
      );

  // Convert Entity List to Hive List
  List<AuthHiveModel> toHiveModelList(List<UserEntity> entities) =>
      entities.map((entity) => toHiveModel(entity)).toList();

  @override
  String toString() {
    return 'userId: $userId, fname: $fname, lname: $lname, phone: $phone, username: $username, password: $password';
  }
}
