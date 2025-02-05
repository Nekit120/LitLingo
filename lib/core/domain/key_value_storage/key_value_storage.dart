// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lit_lingo/core/domain/key_value_storage/storage_key/storage_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class KeyValueStorage {
  /// Returns a value if the `key` is exists.
  /// Otherwise returns `null`.
  Future<ValueType?> get<ValueType>(StorageKey<ValueType> key);

  /// Puts a new or replace an existing `value`
  /// for the given key to the storage.
  Future<void> put<ValueType>(StorageKey<ValueType> key, ValueType value);

  /// Removes an existing value for the given key.
  Future<void> remove<ValueType>(StorageKey<ValueType> key);
}

class SecureStorage implements KeyValueStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  static const instance = SecureStorage._(FlutterSecureStorage());

  const SecureStorage._(this._flutterSecureStorage);

  factory SecureStorage() => instance;

  @override
  Future<ResultType?> get<ResultType>(StorageKey<ResultType> key) async =>
      await key
          .convertFromStorage(await _flutterSecureStorage.read(key: key.id));

  @override
  Future<void> put<T>(StorageKey<T> key, T value) async =>
      await _flutterSecureStorage.write(
          key: key.id, value: await key.convertToStorage(value));

  @override
  Future<void> remove<ValueType>(StorageKey<ValueType> key) =>
      _flutterSecureStorage.delete(key: key.id);

  Future<void> clean() => _flutterSecureStorage.deleteAll();
}

class SharedStorage implements KeyValueStorage {
  final SharedPreferencesAsync _sharedPreferences;
  const SharedStorage(this._sharedPreferences);

  @override
  Future<ValueType?> get<ValueType>(StorageKey<ValueType> key) async =>
      await key.convertFromStorage(await _sharedPreferences.getString(key.id));

  @override
  Future<void> put<ValueType>(
      StorageKey<ValueType> key, ValueType value) async {
    final stringValue = await key.convertToStorage(value);
    if (stringValue == null) return;
    await _sharedPreferences.setString(key.id, stringValue);
  }

  @override
  Future<void> remove<ValueType>(StorageKey<ValueType> key) =>
      _sharedPreferences.remove(key.id);
}
