import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_event.freezed.dart';

abstract class StockEvent {}

@freezed
class StockQuery extends StockEvent with _$StockQuery {
const factory StockQuery({required String data}) = _StockQuery;
}