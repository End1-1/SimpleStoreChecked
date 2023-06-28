import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_store_checker/screens/app_scaffold/app_scaffold.dart';
import 'package:simple_store_checker/screens/stock/stock_bloc.dart';
import 'package:simple_store_checker/screens/stock/stock_event.dart';
import 'package:simple_store_checker/screens/stock/stock_state.dart';
import 'package:simple_store_checker/utils/locale.dart';
import 'package:simple_store_checker/utils/styles.dart';

import 'goods.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String barcode = ModalRoute.of(context)?.settings.arguments as String;
    return BlocProvider<StockBloc>(
        create: (_) => StockBloc(StockInProgress(), data: barcode),
        child: AppScaffold(
            child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(barcode, style: tsMain)),
            Row(
              children: [
                Align(
                  alignment: Alignment.center,
                  child:OutlinedButton(onPressed: (){}, child: Text(lo(strGroupOfGoods), style: tsMain)))
              ],
            ),
            BlocBuilder<StockBloc, StockState>(builder: (context, state) {
              if (state is StockInProgress) {
                return const Expanded(
                    child: Center(
                        child: SizedBox(
                            height: 40,
                            width: 40,
                            child: CircularProgressIndicator())));
              } else if (state is StockData) {
                GoodsList gl =
                    GoodsList.fromJson({'list': jsonDecode(state.data)});
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _goods(context, gl),
                );
              }
              return Container();
            }),
          ],
        )));
  }

  List<Widget> _goods(BuildContext context, GoodsList gl) {
    List<Widget> lw = [];
    lw.add(SizedBox(height: 50));
    for (var e in gl.list) {
      lw.add(Column(children: [
        Row(
          children: [Text(e.store, style: tsMain), const SizedBox(width: 20), Text(e.group, style: tsMain)],
        ),
        Row(children: [
          Text(e.name, style: tsMain),
        ],),
        Row(
          children: [
            Text(e.qty, style: tsMain), const SizedBox(width: 20),
            Text(e.unit, style: tsMain),
          ],
        )
      ]));
      lw.add(const Divider(height: 4, color:  Colors.yellowAccent,));
    }
    lw.add(Align(alignment: Alignment.center, child: OutlinedButton(onPressed: () {
      FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR).then((barcodeScanRes) {
        if (barcodeScanRes != '-1') {
          BlocProvider.of<StockBloc>(context).add(StockQuery(data: barcodeScanRes));
        }
      });

    }, child: Text(lo(strOther), style: tsMain))));
    return lw;
  }
}
