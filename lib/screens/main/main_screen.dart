import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:simple_store_checker/screens/app_scaffold/app_scaffold.dart';
import 'package:simple_store_checker/utils/locale.dart';
import 'package:simple_store_checker/utils/styles.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.center,
            child: OutlinedButton(
                onPressed: () {
                  FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR).then((barcodeScanRes) {
                    if (barcodeScanRes != '-1') {
                      Navigator.pushNamed(context, '/stock', arguments: barcodeScanRes);
                    }
                  });
                },
                child: Text(lo(strStock), style: tsMain))),
        const SizedBox(
          height: 50,
        ),
        Align(
            alignment: Alignment.center,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/config');
                },
                child: Text(lo(strConfig), style: tsMain)))
      ],
    ));
  }
}
