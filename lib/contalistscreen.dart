import 'package:flutter/material.dart';
import 'package:list_view_example_1/Model/contact.dart';

class Contalistscreen extends StatefulWidget {
  

  @override
  State<Contalistscreen> createState() => _ContalistscreenState();
}

class _ContalistscreenState extends State<Contalistscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact List'),),
      body: Padding(padding: EdgeInsets.all(15),
      
      child: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            title: Text(contactList[index].name),
            subtitle: Text(contactList[index].number),
            leading: CircleAvatar(
              radius: 25,
              child: Text(contactList[index].name[0])
              ),
              trailing: IconButton(onPressed: (){
                showDialog(
                  barrierDismissible: false,
                  context: context,
                 builder: (context){
                  return AlertDialog(
                    title: Text('Are you sure to delete?'),
                    actions: [
                      TextButton(onPressed: (){
                        contactList.removeAt(index);
                        setState(() {
                          
                        });
                        Navigator.pop(context);

                      }, child: Text('Yes')),
                      TextButton(onPressed: (){
                        Navigator.pop(context);

                      }, child: Text('No')),
                    ],
                  );
                 });
              
              }, icon: Icon(Icons.delete)),
            );
            
        }),
      ),
    );
  }
}