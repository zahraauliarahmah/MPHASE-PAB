import 'package:flutter/material.dart';
import '../services/cycle_service.dart';

class CycleFormPage extends StatefulWidget {
  final Map? data;

  const CycleFormPage({super.key, this.data});

  @override
  State<CycleFormPage> createState() => _CycleFormPageState();
}

class _CycleFormPageState extends State<CycleFormPage> {

  DateTime selectedDate = DateTime.now();

  String selectedHari = "Day 1";
  String selectedMood = "Happy";

  final TextEditingController gejala = TextEditingController();

  final service = CycleService();

  final List<String> hariList = [
    "Day 1",
    "Day 2",
    "Day 3",
    "Day 4",
    "Day 5",
    "Day 6",
    "Day 7",
    "Day 8",
    "Day 9",
    "Day 10"
  ];

  final List<String> moodList = [
    "Happy",
    "Sad",
    "Moody",
    "Tired",
    "Cramps",
    "Emotional",
    "Energetic"
  ];

  /// INIT DATA SAAT EDIT
  @override
  void initState() {
    super.initState();

    if (widget.data != null) {

      selectedHari = widget.data!['day'] ?? "Day 1";
      selectedMood = widget.data!['mood'] ?? "Happy";
      gejala.text = widget.data!['symptom'] ?? "";

      if (widget.data!['date'] != null) {
        selectedDate = DateTime.parse(widget.data!['date']);
      }
    }
  }

  /// DATE PICKER
  Future pickDate() async {

    final date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  /// SAVE DATA
  Future save() async {

    String date = selectedDate.toString().split(' ')[0];

    if (widget.data == null) {

      await service.addLog(
        date,
        selectedHari,
        gejala.text,
        selectedMood,
      );

    } else {

      await service.updateLog(
        widget.data!['id'],
        date,
        selectedHari,
        gejala.text,
        selectedMood,
      );
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Data berhasil disimpan")),
    );

    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Cycle Form"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Masukkan tanggal period kamu",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "${selectedDate.toLocal()}".split(' ')[0],
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: pickDate,
              child: const Text("Pilih Tanggal"),
            ),

            const SizedBox(height: 20),

            /// DROPDOWN HARI
            DropdownButtonFormField<String>(
              value: selectedHari,
              decoration: const InputDecoration(
                labelText: "Hari",
                border: OutlineInputBorder(),
              ),
              items: hariList.map((h) {
                return DropdownMenuItem(
                  value: h,
                  child: Text(h),
                );
              }).toList(),
              onChanged: (v) {
                setState(() {
                  selectedHari = v!;
                });
              },
            ),

            const SizedBox(height: 20),

            /// GEJALA
            TextField(
              controller: gejala,
              decoration: const InputDecoration(
                labelText: "Gejala",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            /// MOOD
            DropdownButtonFormField<String>(
              value: selectedMood,
              decoration: const InputDecoration(
                labelText: "Mood",
                border: OutlineInputBorder(),
              ),
              items: moodList.map((m) {
                return DropdownMenuItem(
                  value: m,
                  child: Text(m),
                );
              }).toList(),
              onChanged: (v) {
                setState(() {
                  selectedMood = v!;
                });
              },
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: save,
                child: const Text("Simpan"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}