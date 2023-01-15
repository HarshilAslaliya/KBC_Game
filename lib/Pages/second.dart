import 'package:flutter/material.dart';

class SecoundPage extends StatefulWidget {
  const SecoundPage({Key? key}) : super(key: key);

  @override
  State<SecoundPage> createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  List<Map<String, dynamic>> collection = [
    {
      'id': 1,
      'que': "The International Literacy Day is \n     observed on",
      'A': "Sep 8",
      'B': "Nov 28",
      'C': "May 2",
      'D': "Sep 22",
      'ans': 'A',
    },
    {
      'id': 2,
      'que':
          "The language of Lakshadweep. \n     a Union Territory of India, is",
      'A': "Tamil",
      'B': "Hindi",
      'C': "Malayalam",
      'D': "Telugu",
      'ans': 'C',
    },
    {
      'id': 3,
      'que':
          "In which group of places the \n     Kumbha Mela is held every twelve \n     years?",
      'A': "Ujjain. Purl; Prayag. Haridwar",
      'B': "Prayag. Haridwar, Ujjain,. Nasik",
      'C': "Rameshwaram. Purl, Badrinath. Dwarika",
      'D': "Chittakoot, Ujjain, Prayag,'Haridwar",
      'ans': 'B',
    },
    {
      'id': 4,
      'que': "Bahubali festival is related to",
      'A': "Islam",
      'B': "Hinduism",
      'C': "Buddhism",
      'D': "Jainism",
      'ans': 'D',
    },
    {
      'id': 5,
      'que': "Which day is observed as the \n     World Standards  Day?",
      'A': "June 26",
      'B': "Oct 14",
      'C': "Nov 15",
      'D': "Dec 2",
      'ans': 'B',
    },
    {
      'id': 6,
      'que':
          "Which of the following was the \n     theme of the World Red Cross and \n     Red Crescent Day?",
      'A': "'Dignity for all - focus on women'",
      'B': "Dignity for all - focus on Children'",
      'C': "Focus on health for all",
      'D': "Nourishment for all-focus on children'",
      'ans': 'B',
    },
    {
      'id': 7,
      'que': "September 27 is celebrated every \n     year as",
      'A': "Teachers' Day",
      'B': "National Integration Day",
      'C': "World Tourism Day",
      'D': "International Literacy Day",
      'ans': 'C',
    },
    {
      'id': 8,
      'que': "Who is the author of 'Manas \n     Ka-Hans' ?",
      'A': "Khushwant Singh",
      'B': "Prem Chand",
      'C': "Jayashankar Prasad",
      'D': "Amrit Lal Nagar",
      'ans': 'D',
    },
    {
      'id': 9,
      'que':
          "The death anniversary of which of \n     the following leaders is observed \n     as Martyrs' Day?",
      'A': "Smt. Indira Gandhi",
      'B': "PI. Jawaharlal Nehru",
      'C': "Mahatma Gandhi",
      'D': "Lal Bahadur Shastri",
      'ans': 'C',
    },
    {
      'id': 10,
      'que': "Who is the author of the epic \n     'Meghdoot'?",
      'A': "Vishakadatta",
      'B': "Valmiki",
      'C': "Banabhatta",
      'D': "Kalidas",
      'ans': 'D',
    },
  ];

  var i = 0;
  var score = 0;
  var Col1 = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C1542),
      body: Stack(
        children: [
          Center(
            child: Container(
              child: Image(
                image: AssetImage("asset/images/h1.png"),
              ),
            ),
          ),
          Container(
            color: Colors.white10,
          ),
          IndexedStack(
            index: i,
            children: [
              ...collection
                  .map(
                    (e) => Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black54,
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${e['id']})  ${e['que']}",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (e['ans'] == 'A') {
                                      score += 100;
                                    } else if (e['ans'] == 'B') {
                                      score -= 50;
                                    } else if (e['ans'] == 'C') {
                                      score -= 50;
                                    } else if (e['ans'] == 'D') {
                                      score -= 50;
                                    }
                                  },
                                  child: OptionButton(
                                    color1: Col1,
                                    option: "(A)  ${e['A']}",
                                    h1: MediaQuery.of(context).size.height *
                                        0.1,
                                    w1: MediaQuery.of(context).size.width *
                                        0.45,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (e['ans'] == 'B') {
                                      score += 100;
                                    } else if (e['ans'] == 'A') {
                                      score -= 50;
                                    } else if (e['ans'] == 'C') {
                                      score -= 50;
                                    } else if (e['ans'] == 'D') {
                                      score -= 50;
                                    }
                                  },
                                  child: OptionButton(
                                    color1: Col1,
                                    option: "(B)  ${e['B']}",
                                    h1: MediaQuery.of(context).size.height *
                                        0.1,
                                    w1: MediaQuery.of(context).size.width *
                                        0.45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (e['ans'] == 'C') {
                                      score += 100;
                                    } else if (e['ans'] == 'B') {
                                      score -= 50;
                                    } else if (e['ans'] == 'A') {
                                      score -= 50;
                                    } else if (e['ans'] == 'D') {
                                      score -= 50;
                                    }
                                  },
                                  child: OptionButton(
                                    color1: Col1,
                                    option: "(C)  ${e['C']}",
                                    h1: MediaQuery.of(context).size.height *
                                        0.1,
                                    w1: MediaQuery.of(context).size.width *
                                        0.45,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (e['ans'] == 'D') {
                                      score += 100;
                                    } else if (e['ans'] == 'B') {
                                      score -= 50;
                                    } else if (e['ans'] == 'C') {
                                      score -= 50;
                                    } else if (e['ans'] == 'A') {
                                      score -= 50;
                                    }
                                  },
                                  child: OptionButton(
                                    color1: Col1,
                                    option: "(D)  ${e['D']}",
                                    h1: MediaQuery.of(context).size.height *
                                        0.1,
                                    w1: MediaQuery.of(context).size.width *
                                        0.45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image(
                                image: AssetImage("asset/images/emoji3.png"),
                                height: 300,
                                width: 300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.12,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            "GAME OVER",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 60,
                                color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment(-0.04, 0),
                      child: CircleAvatar(
                        radius: 130,
                        backgroundColor: Colors.black26,
                        backgroundImage: AssetImage("asset/images/emoji3.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Score : $score",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 45,
                                color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black54,
        onPressed: () {
          setState(() {
            (i < 10) ? i++ : i = 0;
          });
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }

  Widget OptionButton(
      {required String option,
      required double h1,
      required double w1,
      required Color color1}) {
    return Container(
      height: h1,
      width: w1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color1,
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          option,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
