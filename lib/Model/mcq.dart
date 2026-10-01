class MCQ{
  String question;
  String opt1,opt2,opt3,correct;
  String ?userAnswer;
  MCQ({required this.question,required this.opt1,
  required this.opt2,required this.opt3,required this.correct});
}
List<MCQ> mcqs = [
  MCQ(
    question: "Which symbol is used to end a statement in C++?",
    opt1: ".",
    opt2: ";",
    opt3: ":",
    correct: ";",
  ),

  MCQ(
    question: "Which of the following is used to display output in C++?",
    opt1: "cin",
    opt2: "cout",
    opt3: "print",
    correct: "cout",
  ),

  MCQ(
    question: "Which data type is used to store a whole number?",
    opt1: "float",
    opt2: "char",
    opt3: "int",
    correct: "int",
  ),

  MCQ(
    question: "Which operator is used to get the remainder of a division?",
    opt1: "/",
    opt2: "%",
    opt3: "*",
    correct: "%",
  ),

  MCQ(
    question: "Which statement is used to take input from the user in C++?",
    opt1: "cout",
    opt2: "cin",
    opt3: "input",
    correct: "cin",
  ),

  MCQ(
    question: "What is the value of x after executing: int x = 10 + 5 * 2;",
    opt1: "30",
    opt2: "20",
    opt3: "25",
    correct: "20",
  ),

  MCQ(
    question: "Which keyword is used to make a decision in C++?",
    opt1: "if",
    opt2: "check",
    opt3: "condition",
    correct: "if",
  ),

  MCQ(
    question: "Which of the following is a valid C++ variable name?",
    opt1: "2number",
    opt2: "student_name",
    opt3: "student-name",
    correct: "student_name",
  ),

  MCQ(
    question: "What will be the output of: cout << 10 / 3;",
    opt1: "3.33",
    opt2: "3",
    opt3: "4",
    correct: "3",
  ),

  MCQ(
    question: "Which operator is used to compare two values for equality?",
    opt1: "=",
    opt2: "==",
    opt3: "!=",
    correct: "==",
  ),
];