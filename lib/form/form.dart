import 'package:flutter/material.dart';

class formciyus extends StatefulWidget {
  @override
  _formciyusState createState() =>
      _formciyusState();
}

class _formciyusState extends State<formciyus> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  String? _selectedRasa;
  String? _preferredUkuran;

  List<String> rasaOptions = ['Coklat', 'Strawberry', 'Vanila', 'Cookies and Cream', 'Tiramisu','Matcha','coffe','Lemon','Mint'];
  List<String> ukuranOptions = ['Small', 'Medium', 'Large', 'Duo Small ', 'Duo Medium','Duo Large'];

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 218, 139, 93),
            title: Text(
              "Pemesanan Ice Cream Anda Telah Berhasil",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            content: Text(
              "Terima Kasih Telah Memesan Ciyus!",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "TUTUP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ice Cream Ciyus'),
        backgroundColor: Color.fromARGB(255, 175, 112, 73),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 202, 134, 78),
              Color.fromARGB(255, 230, 225, 221),
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [ 
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Color.fromARGB(255, 163, 115, 70)),
                          labelText: 'Nama Anda',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan Nama Anda';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _dobController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Color.fromARGB(255, 156, 118, 69)),
                          labelText: 'Waktu Pemesanan Ciyus',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        keyboardType: TextInputType.datetime,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Mohon Masukkan Waktu Pemesanan';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Color.fromARGB(255, 151, 116, 64)),
                          labelText: 'Rasa',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        value: _selectedRasa,
                        dropdownColor: Color.fromARGB(255, 163, 118, 75),
                        items: rasaOptions.map((rasa) {
                          return DropdownMenuItem<String>(
                            value: rasa,
                            child: Text(rasa, style: TextStyle(color: Colors.white)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedRasa = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Masukkan Rasa Yang Anda Pilih ';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Color.fromARGB(255, 165, 117, 55)),
                          labelText: 'ukuran cone',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        value: _preferredUkuran,
                        dropdownColor: Color.fromARGB(255, 156, 120, 73),
                        items: ukuranOptions.map((position) {
                          return DropdownMenuItem<String>(
                            value: position,
                            child: Text(position, style: TextStyle(color: Colors.white)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _preferredUkuran = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Masukkan Ukuran Cone Yang Anda Pilih';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _submitForm,
                        child: Text('SUBMIT'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 151, 105, 66),
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}