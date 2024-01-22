import 'package:flutter/material.dart';
import 'input_smartphone.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tampilan Data Input'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
                'Smartphone \nKode Smartphone : SGS23U \nNama : Galaxy \nSeri : S23 Ultra \nJenis Jaringan : 5G \nProdusen : Samsung'),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InputSmartphone()),
                    (route) => false);
              },
              child: const Text('Tambah Data'),
            ),
          ),
        ],
      ),
    );
  }
}
