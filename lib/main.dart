import 'package:flutter/material.dart';
import './Quest.dart';
import './answer.dart';
import 'package:restart_app/restart_web.dart';
import 'package:restart_app/restart_app.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final Q2 = [
    {
      'Question': 'Choose the mode you prefer',
      'answers': [
        'learning mode ',
        'build mode ',
        'endless mode ',
        'level mode '
      ]
    // },
    // {
    //   'Question': 'what\'s the seconde mode that you prefer',
    //   'answers': [
    //     'learning mode 2',
    //     'build mode 2',
    //     'endless mode 2',
    //     'level mode 2'
    //   ]
    // },
    // {
    //   'Question': 'what\'s the third mode that you prefer',
    //   'answers': [
    //     'learning mode 3',
    //     'build mode 3',
    //     'endless mode 3',
    //     'level mode 3'
    //   ]
    // },
    // {
    //   'Question': 'what\'s the fourth mode that you prefer',
    //   'answers': [
    //     'learning mode 4',
    //     'build mode 4',
    //     'endless mode 4',
    //     'level mode 4'
    //   ]
    },
  ];
  var _QuestionIndex = 0;
  void _resetapp(){
setState(() {});
_QuestionIndex=0;
  }
  void _answerQuestion() {
    setState(() {
      _QuestionIndex += 1;
      // if (_QuestionIndex >= Q2.length) {
      //   _QuestionIndex = 0;
      // }
    });
    print('answered');
    print(Q2.length);
  }

  @override
  Widget build(BuildContext context) {
    var modes = ['learning mode ', 'build mode', 'endless mode', 'level mode'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Logic E-nhancer',
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
          ),
          body: _QuestionIndex < 1
              ? Column(
                  children: [
                    Quest(Q2[_QuestionIndex]['Question'] as String),
                    ...(Q2[_QuestionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList()
                    // Answer(_answerQuestion),
                    // Answer(_answerQuestion),
                    // Answer(_answerQuestion),
                    // Answer(_answerQuestion),
                    // RaisedButton(
                    //   child: Text(modes[1]),
                    //   onPressed: () => print('answer 2'),
                    // ),
                    // RaisedButton(
                    //   child: Text(modes[2]),
                    //   onPressed: () {
                    //     // ...
                    //     print('answer 3');
                    //   },
                    // ),
                    // RaisedButton(
                    //   child: Text(modes[3]),
                    //   onPressed: _answerQuestion,
                    // ),
                  ],
                )
              :Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
Center(child: Image.asset('assets/images/cont.png')),
Center( child: ElevatedButton(onPressed: _resetapp, child: Text('return')))  ],
)
              )
              );
  }
}
