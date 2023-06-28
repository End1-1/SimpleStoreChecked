// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Goods _$$_GoodsFromJson(Map<String, dynamic> json) => _$_Goods(
      store: json['store'] as String,
      group: json['group'] as String,
      name: json['name'] as String,
      qty: json['qty'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$_GoodsToJson(_$_Goods instance) => <String, dynamic>{
      'store': instance.store,
      'group': instance.group,
      'name': instance.name,
      'qty': instance.qty,
      'unit': instance.unit,
    };

_$_GoodsList _$$_GoodsListFromJson(Map<String, dynamic> json) => _$_GoodsList(
      list: (json['list'] as List<dynamic>)
          .map((e) => Goods.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GoodsListToJson(_$_GoodsList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
