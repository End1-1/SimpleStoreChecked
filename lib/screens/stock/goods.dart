import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods.freezed.dart';
part 'goods.g.dart';

@freezed
class Goods with _$Goods {
  const factory Goods({required String store, required String group,
  required String name, required String qty, required String unit}) = _Goods;
  factory Goods.fromJson(Map<String,Object?> json) => _$GoodsFromJson(json);
}

@freezed
class GoodsList with _$GoodsList {
  const factory GoodsList({required List<Goods> list}) = _GoodsList;
  factory GoodsList.fromJson(Map<String,Object?> json) => _$GoodsListFromJson(json);
}