import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(
  title: "TODO APP",
  home: TODOAPP(),
  debugShowCheckedModeBanner: false,
));
class TODOAPP extends StatefulWidget {
  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value;
  var ListTODO = [''];
  addTODO(String item){
    setState(() {
      ListTODO.add(item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("TODO APP") ,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:(){
          addTODO(value);
        },
      ),
      body: ListView.builder(
          itemCount: ListTODO.length,
          itemBuilder: (context,index){
            return index == 0? Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Add Item" 
                ),
                onChanged: (val){
                  value =val;
                },
              ),
            ): ListTile(
              leading: Icon(Icons.work),
              title: Text('${ListTODO[index]}'),
            );

        })
    );
  }
}