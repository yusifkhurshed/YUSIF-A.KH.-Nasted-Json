//YUSIF A.KH.
import'dart:convert';
import 'package:http/http.dart'as http;
import'model.dart';

Future<List<Users>>getData()async{
  final response=await http.get(Uri.parse('http://jsonplaceholder.typicode.com/users'));
  if(response.statusCode==200){
    final data=jsonDecode(response.body)as List<dynamic>;
    final List<Users> x=data.map((item)=> Users.fromJson(item)).toList();
    return x;
  }else{
    throw Exception('حدث خطا في الشبكة');
  }

}