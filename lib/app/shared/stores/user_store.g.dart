// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStoreBase, Store {
  final _$playerIdAtom = Atom(name: '_UserStoreBase.playerId');

  @override
  String get playerId {
    _$playerIdAtom.reportRead();
    return super.playerId;
  }

  @override
  set playerId(String value) {
    _$playerIdAtom.reportWrite(value, super.playerId, () {
      super.playerId = value;
    });
  }

  @override
  String toString() {
    return '''
playerId: ${playerId}
    ''';
  }
}
