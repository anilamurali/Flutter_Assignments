import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/sqflite/db/SQLHelper.dart';


class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  var data;
  void delet(int id) async {
    await SQLHelper.DeleteUser(id);
    Refresh();

  }
  @override
  void initState() {
    Refresh();
    super.initState();
  }
  void Refresh() async {
    var myData=await SQLHelper.getAll();
    setState(() {
      data=myData;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Admin Panel'),),
      body: ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,int index){
            return Card(
              color: Colors.deepPurple[200],
              child: ListTile(
                title: Text('${data[index]['name']}'),
                trailing: IconButton(onPressed: (){
                  delet(data[index]['id']);
                },icon: Icon(Icons.delete),),
              ),
            );

      }),
    );
  }




}
