import 'package:supabase_flutter/supabase_flutter.dart';

class CycleService {

  final supabase = Supabase.instance.client;

  /// GET DATA USER SAAT INI
  Future<List> getLogs() async {

    final user = supabase.auth.currentUser;

    final data = await supabase
        .from('cycle_logs')
        .select()
        .eq('user_id', user!.id);

    return data;
  }

  /// ADD DATA
  Future addLog(tanggal, hari, gejala, mood) async {

    final user = supabase.auth.currentUser;

    await supabase.from('cycle_logs').insert({
      'user_id': user!.id,
      'tanggal': tanggal,
      'hari': hari,
      'gejala': gejala,
      'mood': mood
    });
  }

  /// UPDATE DATA
  Future updateLog(id, tanggal, hari, gejala, mood) async {

    await supabase.from('cycle_logs').update({
      'tanggal': tanggal,
      'hari': hari,
      'gejala': gejala,
      'mood': mood
    }).eq('id', id);
  }

  /// DELETE DATA
  Future deleteLog(id) async {

    await supabase
        .from('cycle_logs')
        .delete()
        .eq('id', id);
  }

}