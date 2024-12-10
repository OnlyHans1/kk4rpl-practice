import 'package:flutter/material.dart';

class FormPages extends StatefulWidget {
  const FormPages({super.key});

  @override
  State<FormPages> createState() => _FormPagesState();
}

class _FormPagesState extends State<FormPages> {
  List<String> agama = [
    "Islam",
    "Kristen Katolik",
    "Kristen Protestan",
    "Hindu",
    "Budha"
  ];
  String _agama = "Islam";

  String _jk = "";

  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  TextEditingController controllerMoto = TextEditingController();

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200,
        child: Column(
          children: [
            Text("Nama Lengkap : ${controllerNama.text}"),
            Text("Password : ${controllerPass.text}"),
            Text("Moto Hidup : ${controllerMoto.text}"),
            Text("Jenis Kelamin : $_jk"),
            Text("Agama : $_agama"),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Ok"),
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list),
        title: const Text("Formulir"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                TextField(
                  controller: controllerPass,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                TextField(
                  controller: controllerMoto,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "Moto Hidup",
                    labelText: "Moto Hidup",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                RadioListTile(
                  value: "Laki-Laki",
                  groupValue: _jk,
                  onChanged: (value) {
                    _pilihJk(value.toString());
                  },
                  title: const Text("Laki-Laki"),
                  activeColor: Colors.red,
                  subtitle: const Text("Pilih ini jika anda Laki-Laki"),
                ),
                RadioListTile(
                  value: "Perempuan",
                  groupValue: _jk,
                  onChanged: (value) {
                    _pilihJk(value.toString());
                  },
                  title: const Text("Perempuan"),
                  activeColor: Colors.red,
                  subtitle: const Text("Pilih ini jika anda Perempuan"),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    const Text(
                      "Agama ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    DropdownButton<String>(
                      value: _agama,
                      items: agama.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          pilihAgama(value);
                        }
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    kirimdata();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text(
                    "OK",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
