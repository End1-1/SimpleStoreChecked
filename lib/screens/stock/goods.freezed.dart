// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Goods _$GoodsFromJson(Map<String, dynamic> json) {
  return _Goods.fromJson(json);
}

/// @nodoc
mixin _$Goods {
  String get store => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get qty => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsCopyWith<Goods> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsCopyWith<$Res> {
  factory $GoodsCopyWith(Goods value, $Res Function(Goods) then) =
      _$GoodsCopyWithImpl<$Res, Goods>;
  @useResult
  $Res call({String store, String group, String name, String qty, String unit});
}

/// @nodoc
class _$GoodsCopyWithImpl<$Res, $Val extends Goods>
    implements $GoodsCopyWith<$Res> {
  _$GoodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
    Object? group = null,
    Object? name = null,
    Object? qty = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoodsCopyWith<$Res> implements $GoodsCopyWith<$Res> {
  factory _$$_GoodsCopyWith(_$_Goods value, $Res Function(_$_Goods) then) =
      __$$_GoodsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String store, String group, String name, String qty, String unit});
}

/// @nodoc
class __$$_GoodsCopyWithImpl<$Res> extends _$GoodsCopyWithImpl<$Res, _$_Goods>
    implements _$$_GoodsCopyWith<$Res> {
  __$$_GoodsCopyWithImpl(_$_Goods _value, $Res Function(_$_Goods) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
    Object? group = null,
    Object? name = null,
    Object? qty = null,
    Object? unit = null,
  }) {
    return _then(_$_Goods(
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Goods implements _Goods {
  const _$_Goods(
      {required this.store,
      required this.group,
      required this.name,
      required this.qty,
      required this.unit});

  factory _$_Goods.fromJson(Map<String, dynamic> json) =>
      _$$_GoodsFromJson(json);

  @override
  final String store;
  @override
  final String group;
  @override
  final String name;
  @override
  final String qty;
  @override
  final String unit;

  @override
  String toString() {
    return 'Goods(store: $store, group: $group, name: $name, qty: $qty, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Goods &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, store, group, name, qty, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoodsCopyWith<_$_Goods> get copyWith =>
      __$$_GoodsCopyWithImpl<_$_Goods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoodsToJson(
      this,
    );
  }
}

abstract class _Goods implements Goods {
  const factory _Goods(
      {required final String store,
      required final String group,
      required final String name,
      required final String qty,
      required final String unit}) = _$_Goods;

  factory _Goods.fromJson(Map<String, dynamic> json) = _$_Goods.fromJson;

  @override
  String get store;
  @override
  String get group;
  @override
  String get name;
  @override
  String get qty;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_GoodsCopyWith<_$_Goods> get copyWith =>
      throw _privateConstructorUsedError;
}

GoodsList _$GoodsListFromJson(Map<String, dynamic> json) {
  return _GoodsList.fromJson(json);
}

/// @nodoc
mixin _$GoodsList {
  List<Goods> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsListCopyWith<GoodsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsListCopyWith<$Res> {
  factory $GoodsListCopyWith(GoodsList value, $Res Function(GoodsList) then) =
      _$GoodsListCopyWithImpl<$Res, GoodsList>;
  @useResult
  $Res call({List<Goods> list});
}

/// @nodoc
class _$GoodsListCopyWithImpl<$Res, $Val extends GoodsList>
    implements $GoodsListCopyWith<$Res> {
  _$GoodsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Goods>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoodsListCopyWith<$Res> implements $GoodsListCopyWith<$Res> {
  factory _$$_GoodsListCopyWith(
          _$_GoodsList value, $Res Function(_$_GoodsList) then) =
      __$$_GoodsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Goods> list});
}

/// @nodoc
class __$$_GoodsListCopyWithImpl<$Res>
    extends _$GoodsListCopyWithImpl<$Res, _$_GoodsList>
    implements _$$_GoodsListCopyWith<$Res> {
  __$$_GoodsListCopyWithImpl(
      _$_GoodsList _value, $Res Function(_$_GoodsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_GoodsList(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Goods>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoodsList implements _GoodsList {
  const _$_GoodsList({required final List<Goods> list}) : _list = list;

  factory _$_GoodsList.fromJson(Map<String, dynamic> json) =>
      _$$_GoodsListFromJson(json);

  final List<Goods> _list;
  @override
  List<Goods> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'GoodsList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoodsList &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoodsListCopyWith<_$_GoodsList> get copyWith =>
      __$$_GoodsListCopyWithImpl<_$_GoodsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoodsListToJson(
      this,
    );
  }
}

abstract class _GoodsList implements GoodsList {
  const factory _GoodsList({required final List<Goods> list}) = _$_GoodsList;

  factory _GoodsList.fromJson(Map<String, dynamic> json) =
      _$_GoodsList.fromJson;

  @override
  List<Goods> get list;
  @override
  @JsonKey(ignore: true)
  _$$_GoodsListCopyWith<_$_GoodsList> get copyWith =>
      throw _privateConstructorUsedError;
}
