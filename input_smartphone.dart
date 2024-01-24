import 'package:flutter/material.dart';
import 'package:materi_uas/home.dart';

class InputSmartphone extends StatefulWidget {
  const InputSmartphone({Key? key}) : super(key: key);

  @override
  State<InputSmartphone> createState() => _InputSmartphoneState();
}

class _InputSmartphoneState extends State<InputSmartphone> {
  // Dropdown Button
  String selectItem = 'Pilih Produsen';
  var valueItem = [
    'Pilih Produsen',
    'Apple',
    'Oppo',
    'Samsung',
    'Vivo',
    'Xiaomi'
  ];

  // Radio Button
  int selectValue = 1;

  // Checkbox
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheck5 = false;

  // Switch Button
  bool isSwitch = false;

  // Form Input Field
  TextEditingController tecNama = TextEditingController();
  TextEditingController tecKode = TextEditingController();
  TextEditingController tecSeri = TextEditingController();
  TextEditingController tecJenisjaringan = TextEditingController();
  TextEditingController tecProdusen = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal Respon'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: tecKode,
              decoration: const InputDecoration(label: Text('Kode Smarthpone')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: tecNama,
              decoration: const InputDecoration(label: Text('Nama Smarthpone')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: tecSeri,
              decoration: const InputDecoration(label: Text('Seri')),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                const ListTile(
                  title: Text('Jenis Jaringan'),
                ),
                ListTile(
                  title: const Text('4G'),
                  leading: Radio(
                    value: 1,
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('5G'),
                  leading: Radio(
                    value: 2,
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 30),
            child: DropdownButton(
              items: valueItem.map((String itemValue) {
                return DropdownMenuItem(
                  value: itemValue,
                  child: Text(itemValue),
                );
              }).toList(),
              value: selectItem,
              onChanged: (value) {
                setState(() {
                  selectItem = value!;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                const ListTile(
                  title: Text('Contoh CheckBox'),
                ),
                ListTile(
                  title: const Text('Box 1'),
                  leading: Checkbox(
                    value: isCheck1,
                    onChanged: (value) {
                      setState(() {
                        isCheck1 = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Box 2'),
                  leading: Checkbox(
                    value: isCheck2,
                    onChanged: (value) {
                      setState(() {
                        isCheck2 = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Box 3'),
                  leading: Checkbox(
                    value: isCheck3,
                    onChanged: (value) {
                      setState(() {
                        isCheck3 = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Box 4'),
                  leading: Checkbox(
                    value: isCheck4,
                    onChanged: (value) {
                      setState(() {
                        isCheck4 = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Box 5'),
                  leading: Checkbox(
                    value: isCheck5,
                    onChanged: (value) {
                      setState(() {
                        isCheck5 = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Contoh Switch Button'),
                  leading: Switch(
                      value: isSwitch,
                      onChanged: (value) {
                        setState(() {
                          isSwitch = value;
                        });
                      }),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                    (route) => false);
              },
              child: const Text('Simpan Data'),
            ),
          ),
        ],
      ),
    );
  }
}
