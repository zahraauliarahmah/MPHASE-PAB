import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final nama = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final umur = TextEditingController();
  final cycle = TextEditingController();
  final period = TextEditingController();

  DateTime selectedDate = DateTime.now();

  final supabase = Supabase.instance.client;

  Future register() async {

    if(
      nama.text.isEmpty ||
      email.text.isEmpty ||
      password.text.isEmpty ||
      umur.text.isEmpty ||
      cycle.text.isEmpty ||
      period.text.isEmpty
    ){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Semua data harus diisi")),
      );
      return;
    }

    try {

      await supabase.auth.signUp(
        email: email.text.trim(),
        password: password.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Akun berhasil dibuat")),
      );

      Navigator.pop(context);

    } on AuthException catch(e){

      String message = e.message;

      if(message.contains("already registered")){
        message = "Email sudah terdaftar";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );

    } catch(e){

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Register gagal: $e")),
      );

    }
  }

  Future pickDate() async {

    final date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );

    if(date != null){
      setState(() {
        selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Create Account"),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(25),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            TextField(
              controller: nama,
              decoration: const InputDecoration(
                labelText: "Nama",
              ),
            ),

            const SizedBox(height:10),

            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),

            const SizedBox(height:10),

            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),

            const SizedBox(height:10),

            TextField(
              controller: umur,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Umur",
              ),
            ),

            const SizedBox(height:10),

            TextField(
              controller: cycle,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Panjang Siklus (hari)",
              ),
            ),

            const SizedBox(height:10),

            TextField(
              controller: period,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Lama Menstruasi (hari)",
              ),
            ),

            const SizedBox(height:20),

            const Text(
              "Tanggal Haid Terakhir",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height:10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: pickDate,
                child: Text(
                  "Pilih Tanggal: ${selectedDate.toLocal()}".split(' ')[0],
                ),
              ),
            ),

            const SizedBox(height:10),

            const Text(
              "Pilih tanggal hari pertama haid terakhir kamu. "
              "Informasi ini membantu aplikasi memprediksi siklus menstruasi berikutnya "
              "dan masa subur.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),

            const SizedBox(height:30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: register,
                child: const Text("Register"),
              ),
            )

          ],
        ),
      ),
    );
  }
}