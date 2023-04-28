
//YUSIF A.KH.
import 'package:flutter/material.dart';
import 'model.dart';
import 'services.dart';
void main()=> runApp(const MyApp());
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<MyApp> createState()=> _MyAppState();

}
  class _MyAppState extends State<MyApp>{
    late Future<List<Users>> futureUsers;
    @override
    void initState(){
      super.initState();
      futureUsers= getData();
    }
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(appBar: AppBar(title: const Text('Fetch Data Example'),),
        body:Center(child: FutureBuilder<List<Users>>(future: futureUsers,
        builder: (context, snapshot) {
          if(snapshot.hasError==true){
            return Text(snapshot.error.toString());
            }else if(snapshot.hasData==true){
                return ListView.builder(itemCount:snapshot.data!.length,
                itemBuilder:(context,i){
                return ListTile(
                  title:Text(snapshot.data![i].company.name),
                  subtitle:  Text(snapshot.data![i].address.city),
                  leading: Container(
                    color:snapshot.data![i].id % 2 == 0
                    ? Colors.red 
                    : Colors.green,
                    padding: const EdgeInsets.all(10),
                    child: Text(snapshot.data![i].id.toString()),
                  ),
                );

                });}

            return const CircularProgressIndicator();
        },
        ),
        ),
        ),
      );
    }
  }