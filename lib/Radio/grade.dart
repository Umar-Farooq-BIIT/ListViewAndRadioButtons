import 'package:flutter/material.dart';

class GradeCalScreen extends StatefulWidget {
  const GradeCalScreen({super.key});

  @override
  State<GradeCalScreen> createState() => _GradeCalScreenState();
}

class _GradeCalScreenState extends State<GradeCalScreen> {
  int creditHour=3;
  String? grade;
  TextEditingController markController=TextEditingController();
  void calculate()
  {
    int marks=int.parse(markController.text);
    if(creditHour==3)
    {
      if(marks>47)
      grade="A Grade";
      else if(marks>38)
      grade="B Grade";
      else if(marks>29)
      grade="C Grade";
      else if(marks > 23)
      grade="D Grade";
      else
      grade="F Grade";
    }
    else{
       if(marks>63)
      grade="A Grade";
      else if(marks>51)
      grade="B Grade";
      else if(marks>39)
      grade="C Grade";
      else if(marks > 31)
      grade="D Grade";
      else
      grade="F Grade";

    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grade Calculator'),),
      body: Padding(padding: EdgeInsets.all(
        10
      ),
      child: Column(
        children: [
          Text('Obtained Marks'),
          TextFormField(controller: markController,),
          Row(
            children: [
              Radio(value: 3,
               groupValue: creditHour, 
               onChanged: (int?ch){
                creditHour=ch!;
                setState(() {
                  
                });
               }),
               Text('3CH'),
               SizedBox(width: 30,),
                Radio(value: 4,
               groupValue: creditHour, 
               onChanged: (int?ch){
                creditHour=ch!;
                setState(() {
                  
                });
               }),
               Text('4CH'),

            ],
          ),
          ElevatedButton(onPressed: (){
            calculate();

          }, child: Text('Calculate Grade')),
          grade==null?Text(''):Text(grade!)
        ],
      ),
      ),
    );
  }
}