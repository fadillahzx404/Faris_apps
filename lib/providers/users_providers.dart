import 'package:faris_app/model/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase/supabase.dart';

class UsersProvider extends ChangeNotifier {
  Future getRecomendedUsers() async {
    final client = SupabaseClient('https://vjtbjgvwzvkkewxcqmnk.supabase.co',
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZqdGJqZ3Z3enZra2V3eGNxbW5rIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY2MjYyNDE1MCwiZXhwIjoxOTc4MjAwMTUwfQ.Z02yTaaDcd2bYCS2ZPY9SbqE2eiLn2qeShFs03knWuk');
    final res = await client.from('users').select().execute();

    print(res.status);
    print(res.data);

    if (res.status == 200) {
      List datas = res.data;
      List<Users> users = datas.map((e) => Users.fromJson(e)).toList();

      return users;
    } else {
      return <Users>[];
    }
  }
}
