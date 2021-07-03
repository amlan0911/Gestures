import 'package:flutter/material.dart';

class Phrases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    "Applauding Someone.",
    " I am confused?",
    "That is funny.",
    "Good Afternoon!",
    "Good Evening!",
    "Good Morning!",
    "Good Night!",
    "How are you doing?",
    "I dont know.",
    "I will help you.",
    "I like it.",
    "I am fine.",
    "Laughing...",
    "What is there for lunch?",
    "I think there is\nsome miscommunication.",
    "Your introduction.",
    "Where is a phone?",
    "Rofl!",
    "What is the weather like?",
    "What happened?",
    "What is wrong?",
    "What are you doing?",
  ];

  // Image Name List Here
  var imgList = [
    "assets/exp/applause.gif",
    "assets/exp/confused.gif",
    "assets/exp/funny.gif",
    "assets/exp/ga.gif",
    "assets/exp/ge.gif",
    "assets/exp/gm.gif",
    "assets/exp/gn.gif",
    "assets/exp/hyd.gif",
    "assets/exp/idk.gif",
    "assets/exp/ihy.gif",
    "assets/exp/ilike.gif",
    "assets/exp/imf.gif",
    "assets/exp/laugh.gif",
    "assets/exp/lunch.gif",
    "assets/exp/miscom.gif",
    "assets/exp/name.gif",
    "assets/exp/phone.gif",
    "assets/exp/rofl.gif",
    "assets/exp/weather.gif",
    "assets/exp/wh.gif",
    "assets/exp/wrong.gif",
    "assets/exp/wyd.gif",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          ' Basic Phrases',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 25.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(context, imgList[index], titleList[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 120,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, img, title) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 400,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
