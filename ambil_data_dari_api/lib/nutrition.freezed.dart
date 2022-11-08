// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  double get carbohydrates => throw _privateConstructorUsedError;
  double get protein => throw _privateConstructorUsedError;
  double get fat => throw _privateConstructorUsedError;
  double get calories => throw _privateConstructorUsedError;
  double get sugar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res>;
  $Res call(
      {double carbohydrates,
      double protein,
      double fat,
      double calories,
      double sugar});
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res> implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  final Nutrition _value;
  // ignore: unused_field
  final $Res Function(Nutrition) _then;

  @override
  $Res call({
    Object? carbohydrates = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? calories = freezed,
    Object? sugar = freezed,
  }) {
    return _then(_value.copyWith(
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_NutritionCopyWith<$Res> implements $NutritionCopyWith<$Res> {
  factory _$$_NutritionCopyWith(
          _$_Nutrition value, $Res Function(_$_Nutrition) then) =
      __$$_NutritionCopyWithImpl<$Res>;
  @override
  $Res call(
      {double carbohydrates,
      double protein,
      double fat,
      double calories,
      double sugar});
}

/// @nodoc
class __$$_NutritionCopyWithImpl<$Res> extends _$NutritionCopyWithImpl<$Res>
    implements _$$_NutritionCopyWith<$Res> {
  __$$_NutritionCopyWithImpl(
      _$_Nutrition _value, $Res Function(_$_Nutrition) _then)
      : super(_value, (v) => _then(v as _$_Nutrition));

  @override
  _$_Nutrition get _value => super._value as _$_Nutrition;

  @override
  $Res call({
    Object? carbohydrates = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? calories = freezed,
    Object? sugar = freezed,
  }) {
    return _then(_$_Nutrition(
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nutrition implements _Nutrition {
  const _$_Nutrition(
      {required this.carbohydrates,
      required this.protein,
      required this.fat,
      required this.calories,
      required this.sugar});

  factory _$_Nutrition.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionFromJson(json);

  @override
  final double carbohydrates;
  @override
  final double protein;
  @override
  final double fat;
  @override
  final double calories;
  @override
  final double sugar;

  @override
  String toString() {
    return 'Nutrition(carbohydrates: $carbohydrates, protein: $protein, fat: $fat, calories: $calories, sugar: $sugar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrition &&
            const DeepCollectionEquality()
                .equals(other.carbohydrates, carbohydrates) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality().equals(other.calories, calories) &&
            const DeepCollectionEquality().equals(other.sugar, sugar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(carbohydrates),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(calories),
      const DeepCollectionEquality().hash(sugar));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      __$$_NutritionCopyWithImpl<_$_Nutrition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionToJson(
      this,
    );
  }
}

abstract class _Nutrition implements Nutrition {
  const factory _Nutrition(
      {required final double carbohydrates,
      required final double protein,
      required final double fat,
      required final double calories,
      required final double sugar}) = _$_Nutrition;

  factory _Nutrition.fromJson(Map<String, dynamic> json) =
      _$_Nutrition.fromJson;

  @override
  double get carbohydrates;
  @override
  double get protein;
  @override
  double get fat;
  @override
  double get calories;
  @override
  double get sugar;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}
