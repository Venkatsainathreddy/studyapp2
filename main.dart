import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:studyapp2/notes.dart';
import 'package:studyapp2/questionpapers.dart';
import 'package:studyapp2/syllabuscopy.dart';


void main() {
  runApp(MaterialApp(
    home: FirstScreen()
  )
    );
}
class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.notes), text: "Notes",),
              Tab(icon: Icon(Icons.book), text: "Syllabus Copy"),
              Tab(icon: Icon(Icons.book_online_outlined), text: "Question Papers"),
            ],
          ),
          title: Text('Resources'),
        ),
        body: TabBarView(
          children: [
            ExamNotes(),
            SyllabusCopy(),
            QuestionPapers(),
          ],
        ),
      ),
    );
  }
}

