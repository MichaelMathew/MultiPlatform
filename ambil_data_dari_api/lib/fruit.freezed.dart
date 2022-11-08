// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fruit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fruit _$FruitFromJson(Map<String, dynamic> json) {
  return _Fruit.fromJson(json);
}

/// @nodoc
mixin _$Fruit {
  int get id => throw _privateConstructorUsedError;
  String get genus => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  String get order => throw _privateConstructorUsedError;
  Nutrition get nutritions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FruitCopyWith<Fruit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FruitCopyWith<$Res> {
  factory $FruitCopyWith(Fruit value, $Res Function(Fruit) then) =
      _$FruitCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String genus,
      String name,
      String family,
      String order,
      Nutrition nutritions});

  $NutritionCopyWith<$Res> get nutritions;
}

/// @nodoc
class _$FruitCopyWithImpl<$Res> implements $FruitCopyWith<$Res> {
  _$FruitCopyWithImpl(this._value, this._then);

  final Fruit _value;
  // ignore: unused_field
  final $Res Function(Fruit) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? genus = freezed,
    Object? name = freezed,
    Object? family = freezed,
    Object? order = freezed,
    Object? nutritions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      nutritions: nutritions == freezed
          ? _value.nutritions
          : nutritions // ignore: cast_nullable_to_non_nullable
              as Nutrition,
    ));
  }

  @override
  $NutritionCopyWith<$Res> get nutritions {
    return $NutritionCopyWith<$Res>(_value.nutritions, (value) {
      return _then(_value.copyWith(nutritions: value));
    });
  }
}

/// @nodoc
abstract class _$$_FruitCopyWith<$Res> implements $FruitCopyWith<$Res> {
  factory _$$_FruitCopyWith(_$_Fruit value, $Res Function(_$_Fruit) then) =
      __$$_FruitCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String genus,
      String name,
      String family,
      String order,
      Nutrition nutritions});

  @override
  $NutritionCopyWith<$Res> get nutritions;
}

/// @nodoc
class __$$_FruitCopyWithImpl<$Res> extends _$FruitCopyWithImpl<$Res>
    implements _$$_FruitCopyWith<$Res> {
  __$$_FruitCopyWithImpl(_$_Fruit _value, $Res Function(_$_Fruit) _then)
      : super(_value, (v) => _then(v as _$_Fruit));

  @override
  _$_Fruit get _value => super._value as _$_Fruit;

  @override
  $Res call({
    Object? id = freezed,
    Object? genus = freezed,
    Object? name = freezed,
    Object? family = freezed,
    Object? order = freezed,
    Object? nutritions = freezed,
  }) {
    return _then(_$_Fruit(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      nutritions: nutritions == freezed
          ? _value.nutritions
          : nutritions // ignore: cast_nullable_to_non_nullable
              as Nutrition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fruit implements _Fruit {
  const _$_Fruit(
      {required this.id,
      required this.genus,
      required this.name,
      required this.family,
      required this.order,
      required this.nutritions});

  factory _$_Fruit.fromJson(Map<String, dynamic> json) =>
      _$$_FruitFromJson(json);

  @override
  final int id;
  @override
  final String genus;
  @override
  final String name;
  @override
  final String family;
  @override
  final String order;
  @override
  final Nutrition nutritions;

  @override
  String toString() {
    return 'Fruit(id: $id, genus: $genus, name: $name, family: $family, order: $order, nutritions: $nutritions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fruit &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.genus, genus) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.nutritions, nutritions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(genus),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(nutritions));

  @JsonKey(ignore: true)
  @override
  _$$_FruitCopyWith<_$_Fruit> get copyWith =>
      __$$_FruitCopyWithImpl<_$_Fruit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FruitToJson(
      this,
    );
  }
}

abstract class _Fruit implements Fruit {
  const factory _Fruit(
      {required final int id,
      required final String genus,
      required final String name,
      required final String family,
      required final String order,
      required final Nutrition nutritions}) = _$_Fruit;

  factory _Fruit.fromJson(Map<String, dynamic> json) = _$_Fruit.fromJson;

  @override
  int get id;
  @override
  String get genus;
  @override
  String get name;
  @override
  String get family;
  @override
  String get order;
  @override
  Nutrition get nutritions;
  @override
  @JsonKey(ignore: true)
  _$$_FruitCopyWith<_$_Fruit> get copyWith =>
      throw _privateConstructorUsedError;
}
