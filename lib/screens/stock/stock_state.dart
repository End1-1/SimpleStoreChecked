import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_state.freezed.dart';
part 'stock_state.g.dart';

abstract class StockState{}
class StockInProgress extends StockState {}

@freezed
class StockData extends StockState with _$StockData {
  const factory StockData({required dynamic data}) = _StockData;
  factory StockData.fromJson(Map<String,Object?> json) => _$StockDataFromJson(json);
}