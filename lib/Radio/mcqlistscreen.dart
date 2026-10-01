import 'package:flutter/material.dart';
import 'package:list_view_example_1/Model/mcq.dart';

class MCQListScreen extends StatefulWidget {
  const MCQListScreen({super.key});

  @override
  State<MCQListScreen> createState() => _MCQListScreenState();
}

class _MCQListScreenState extends State<MCQListScreen> {
  int score=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MCQ List'),
      
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: buildQuestionView()),
          ),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
         score=   mcqs.where((m)=>m.correct==m.userAnswer).toList().length;
            // for(int i=0;i<mcqs.length;i++){
            //   if(mcqs[i].correct==mcqs[i].userAnswer)
            //   {
            //      score++;
            //   }
            // }

          }, child: Text('Submit'))
        ],
      ),
      )
    );
  }

  ListView buildQuestionView() {
    return ListView.builder(
      itemCount: mcqs.length,
      itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.all(5),
        height: 250,
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
                    groupValue: mcqs[index].userAnswer,
                     onChanged: (String? val){
                      mcqs[index].userAnswer=val;
                      setState(() {
                        
                      });
                     }),
                     Text(mcqs[index].opt1)
                ],),
                 Row(children: [
                  Radio(
                    value: mcqs[index].opt2, 
                    groupValue: mcqs[index].userAnswer,
                     onChanged: (String? val){
                      mcqs[index].userAnswer=val;
                      setState(() {
                        
                      });
                     }),
                     Text(mcqs[index].opt2)
                ],),
                 Row(children: [
                  Radio(
                    value: mcqs[index].opt3, 
                    groupValue: mcqs[index].userAnswer,
                     onChanged: (String? val){
                      mcqs[index].userAnswer=val;
                      setState(() {
                        
                      });
                     }),
                     Text(mcqs[index].opt3)
                ],),
              
              
              ],
            ),
          ),
        ),
      );
      });
  }
}