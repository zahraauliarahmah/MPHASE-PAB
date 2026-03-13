import 'package:flutter/material.dart';
import '../services/cycle_service.dart';
import 'cycle_form_page.dart';

class CycleListPage extends StatefulWidget {
  const CycleListPage({super.key});

  @override
  State<CycleListPage> createState() => _CycleListPageState();
}

class _CycleListPageState extends State<CycleListPage> {

  final service = CycleService();
  List logs = [];

  Future loadData() async {

    final data = await service.getLogs();

    setState(() {
      logs = data;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future deleteData(id) async {

    await service.deleteLog(id);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Data berhasil dihapus")),
    );

    loadData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("MPHASE"),
      ),

      body: logs.isEmpty
          ? const Center(
              child: Text(
                "Belum ada data siklus\n\nYuk tambahkan catatan period kamu 🌸",
                textAlign: TextAlign.center,
              ),
            )

          : ListView.builder(

              itemCount: logs.length,

              itemBuilder: (context, i) {

                final item = logs[i];

                return Card(

                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: ListTile(

                    leading: const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),

                    title: Text(
                    item['tanggal']?.toString() ?? "",
                    style: const TextStyle(
                    fontWeight: FontWeight.bold,
                      ),
                            ),

                    subtitle: Text(
                        "Hari: ${item['hari'] ?? '-'}   |   Mood: ${item['mood'] ?? '-'}   |   Gejala: ${item['gejala'] ?? '-'}",
                          style: const TextStyle(fontSize: 14),
                      ),

                    /// EDIT + DELETE BUTTON
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        /// EDIT
                        IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                          onPressed: () async {

                            var result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CycleFormPage(data: item),
                              ),
                            );

                            if (result == true) {
                              loadData();
                            }
                          },
                        ),

                        /// DELETE
                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            deleteData(item['id']);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton(

        backgroundColor: const Color(0xffd58b9c),

        child: const Icon(Icons.add),

        onPressed: () async {

          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const CycleFormPage(),
            ),
          );

          if (result == true) {
            loadData();
          }
        },
      ),
    );
  }
}