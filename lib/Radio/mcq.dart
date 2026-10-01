import 'package:flutter/material.dart';
import 'package:list_view_example_1/Model/mcq.dart';

class MCQScreen extends StatefulWidget {
  const MCQScreen({super.key});

  @override
  State<MCQScreen> createState() => _MCQScreenState();
}

class _MCQScreenState extends State<MCQScreen> {
  String? userAnswer;
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MCQ'),
      
      ),
      body: index==10?Container(child: Text('Result+'),):
      
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Card(
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Q#${index+1}: ${mcqs[index].question}"),
                  Row(children: [
                    Radio(
                      value: mcqs[index].opt1, 
                      groupValue: userAnswer,
                       onChanged: (String? val){
                        userAnswer=val;
                        setState(() {
                          
                        });
                       }),
                       Text(mcqs[index].opt1)
                  ],),
                   Row(children: [
                    Radio(
                      value: mcqs[index].opt2, 
                      groupValue: userAnswer,
                       onChanged: (String? val){
                        userAnswer=val;
                        setState(() {
                          
                        });
                       }),
                       Text(mcqs[index].opt2)
                  ],),
                   Row(children: [
                    Radio(
                      value: mcqs[index].opt3, 
                      groupValue: userAnswer,
                       onChanged: (String? val){
                        userAnswer=val;
                        setState(() {
                          
                        });
                       }),
                       Text(mcqs[index].opt3)
                  ],),
                  Expanded(child: SizedBox(height: 20,)),
                  ElevatedButton(onPressed: (){
                    index++;
                    userAnswer=null;
                    setState(() {
                      
                    });
              
                  }, child: Text('Next'))
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}