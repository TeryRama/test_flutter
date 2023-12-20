import 'package:flutter/material.dart';
import 'package:tes_flutter/core.dart';
import '../controller/dashboard_user_controller.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DashboardUserView extends StatefulWidget {
  const DashboardUserView({Key? key}) : super(key: key);

  @override
  State<DashboardUserView> createState() => _DashboardUserViewState();
}

class _DashboardUserViewState extends State<DashboardUserView> {
  String? jenisKelamin;
  final TextEditingController posisi = TextEditingController();
  final TextEditingController nama = TextEditingController();
  final TextEditingController ktp = TextEditingController();
  final TextEditingController tempatLahir = TextEditingController();
  final TextEditingController tanggalLahir = TextEditingController();
  final TextEditingController agama = TextEditingController();
  final TextEditingController golonganDarah = TextEditingController();
  final TextEditingController status = TextEditingController();
  final TextEditingController alamatKTP = TextEditingController();
  final TextEditingController alamatTinggal = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController noTelp = TextEditingController();
  final TextEditingController orangTerdekat = TextEditingController();
  final TextEditingController skill = TextEditingController();
  String? bersedia;
  final TextEditingController penghasilan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashboardUser"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: posisi,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Posisi yang dilamar',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: nama,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nama',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: ktp,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'No KTP',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: tanggalLahir,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Tempat Tanggal lahir',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
              child: Row(
                children: [
                  Text(
                    "Jenis Kelamin  :  ",
                    style: TextStyle(fontSize: 16),
                  ),
                  DropdownButton(
                    hint: Text("Jenis Kelamin"),
                    value: jenisKelamin,
                    items: ['laki-laki', 'perempuan'].map((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        jenisKelamin = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: agama,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Agama',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: golonganDarah,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Golongan Darah',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: status,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Status',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: alamatKTP,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Alamat KTP',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: alamatTinggal,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Alamat Tinggal',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: noTelp,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'No Telp',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: orangTerdekat,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Orang Terdekat Yang Dapat Dihubungi',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                controller: skill,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Skill Yang Dimiliki',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 8),
              child: Row(
                children: [
                  Text(
                    "Bersedia Ditempatkan   \n" +
                        "di Seluruh Kantor Perusahaan?  :\n",
                    style: TextStyle(fontSize: 16),
                  ),
                  DropdownButton(
                    hint: Text("Pilih"),
                    value: jenisKelamin,
                    items: ['YA', 'TIDAK'].map((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        bersedia = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 40),
              child: TextFormField(
                controller: penghasilan,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Penghasilan Yang Diharapkan',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // if (a == true) {
                //   Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => DashboardUserView(),
                //     ),
                //   );
                // }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: Text(
                "simpan".toUpperCase(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
