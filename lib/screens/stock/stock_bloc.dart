import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:simple_store_checker/screens/stock/stock_event.dart';
import 'package:simple_store_checker/screens/stock/stock_state.dart';
import 'package:simple_store_checker/utils/prefs.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  StockBloc(super.initialState, {required String data}) {
    on<StockQuery>((event, emit) => _query(event, emit));
    add(StockQuery(data: data));
  }

  void _query(event, emit) async {
    emit(StockInProgress());
    try {
      var response = await http.get(Uri.parse(
          'https://${prefs.getString(lcServerAddress)}:${prefs.getString(lcServerPort)}/stock?p=${event.data}'));
      String s = utf8.decode(response.bodyBytes);
      print(s);
      emit(StockData(data: s));
    } catch (e) {
      print(e.toString());
      emit(StockData(data: e.toString()));
    }
  }
}
