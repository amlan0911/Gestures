import 'package:flutter/material.dart';

class Signs extends StatelessWidget {
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
  // Title List Here
  var titleList = [
    "Airplane",
    "Ambulance",
    "Bathroom",
    "Beautiful",
    "Brother",
    "Children",
    "Clothes",
    "Cold",
    "Emergency",
    "Enjoy",
    "Father",
    "Fever",
    "Food",
    "Good Luck",
    "Good Bye",
    "Happy",
    "Heart Attack",
    "Hello",
    "Help",
    "Hot",
    "Husband",
    "Love",
    "Mother",
    "Parents",
    "Police",
    "Run",
    "Sister",
    "Sorry",
    "Taxi",
    "Thankyou",
    "Today",
    "Tommorow",
    "Water",
    "Weakness",
    "Wife",
  ];

  // Description List Here
  var descList = [
    "To sign airplane, take your outstretched hand, and tuck in your middle and ring fingers. Then move your hand away from your body a short distance, as if flying, bobbing it back and forth a couple of times.",
    "Ambulance is signed by taking a half-open 'C'-shaped dominant hand and rotating it above your head or keeping both your hands above your head. The motion should look like the rotating lights on top of an ambulance.",
    "The sign for 'bathroom' is made by forming the dominant hand into the letter 't' The palm side is facing away from you. Shake your hand side to side a couple times.",
    "Beautiful is signed starting with your dominant hand open, thumb pointing at your chin and fingers pointing up. You complete the sign by rolling your fingers across the front of your face in clockwise fashion, ending with your fingers and thumb together around your chin area.",
    "To sign brother, make both hands into an 'L' shape with your thumbs and index fingers extended. Hold your non-dominant 'L' hand down by your chest. Take your dominant hand and starting at the forehead, forming the tip of a baseball hat, bring the hand down to rest on your non-dominant hand, transforming it into an 'L'.",
    "Children is signed by taking your dominant hand with palm facing down and bobbing your hand up and down in front of your body. The sign looks like you are patting a child on the head.",
    "Clothes is signed by taking both open number 5 hands and touching your thumbs to your shoulders as you brush your hands down the chest a couple times.",
    "To make the sign for cold, take both hands and make them into fists with thumbs up. Pull your upper arms into your sides, stiffen your forearms, and shake your fists back and forth. Remember to also match this sign with your facial expression of discomfort.",
    "To sign emergency, take your dominant hand, form it into the ASL letter E sign, and shake it from side to side. Think of the emergency light swirling atop an ambulance.",
    "The sign for enjoy looks like you are signing please with both hands. One on the chest, one on the belly. Both hands move up and down at the same time, but when the right hand moves left, the left hand moves right.",
    "To perform the sign “dad” in American Sign Language (ASL) use your dominant hand. While keeping your fingers extended and spread out, simply tap on your forehead with the thumb twice.",
    "Taking your hand touching your forehead , indicating body is hot showing high temperature.",
    "Make the sign for food by taking your strong hand, with the tip of your thumb touching the tips of your fingers and tapping them on your mouth twice.",
    "If you want to say 'good luck' to someone, sign 'good' and then spell luck. Notice how the fingerspelling of luck is very quick and uses abbreviated handshapes:",
    "Goodbye is the same as the traditional gesture for the word. Open your palm, folding down your fingers, then open your palm again. ",
    "To sign happy, take your open hand (or both hands) and brush up your chest a couple of times.",
    "The sign for heart attack touches the heart with the middle finger and then forms a fist and strike the palm of the non-dominant loose-hand.",
    "To perform the sign “hello” in American Sign Language (ASL), simply place the hand you are writing with on your forehead close to your ear and move it outwards and away from your body. Don't forget to smile!",
    "The sign for Help is made by closing your left hand into an 'A' Place the outstretched palm of your right hand under the left 'A' hand and raise both hands.",
    "Make the hot sign by taking your fingers and thumb into a claw shape. Now starting with your claw hand over your mouth, move the hand away from your mouth and rotate it so that you end the sign with your palm facing outward.",
    "To sign husband, take your dominant hand and form the general 'male' sign at your forehead (an open, curved hand that looks like a modified 'C'). Then take that hand down to hold the upturned non-dominant hand, also forming an open curved or modified 'C' sign.",
    "To sign I love you in American Sign Language (ASL), point out your thumb and index finger to form an “L”. While keeping them extended, lift your little finger. Your middle and ring finger keep touching your palm. Finally, direct your hand towards the person you are talking to.",
    "To sign mommy, extend and spread your fingers apart on your dominant hand. With your pinkie facing forward, tap your thumb on your chin.",
    "The sign for 'parents' is generally done by doing the sign for 'MOM' and then the sign for DAD', PARENTS: Combine the signs 'mom' and 'dad' quickly as if doing one sign. The thumb can either touch your chin and forehead or simply place your hand near each surface without actually touching.",
    "To sign police, take your dominant hand and form it into the letter 'C' in ASL. Then touch it to your right upper chest, as if forming a police badge on your shirt.",
    "To sign run, position both lateral L hands in the sign for fast then hook them together, one hand in front of the other. Do a fast-forward, pointer-wriggling motion with the leading hand that conveys movement.",
    "To sign sister, extend your thumb and index fingers on both hands, like forming horizontal 'L' signs in ASL. Take your dominant hand, and starting with your thumb under your jaw, move and tap it down on top of your non-dominant hand.",
    "The sign for 'sorry' is made by forming an 'A' with your right hand. Rotate your hand on your chest using a couple of clockwise motions. ",
    "To sign taxi or cab, your dominant hand goes up to your head, with all fingers pointed down, and you touch your head mimicking a cab light.",
    "To perform the sign 'thank you', you take your dominant hand (depending on whether you are left- or right-handed) to your chin and move it slightly down and towards the person you are talking to.",
    "To sign today, form both hands into the ASL letter Y sign, with your thumb and pinkie fingers extended and your three middle fingers curled in on each hand. Starting with your hands up, bring them down to your hip level.",
    "To sign tomorrow, form a modified ASL letter A sign, but with your thumb sticking out more prominently from the rest of the fist. Touch your thumb to your chin, then move it forward, away from your face about a foot or two.",
    "To sign water, take your dominant hand and extend and separate the three middle fingers while holding the thumb and pinkie finger together. Then tap your index finger on your chin a couple of times.",
    "The sign for 'weak' places the fingertips of the dominant hand on the palm of the non-dominant hand and then bends the knuckles twice.",
    "The dominant hand starts at the chin and non-dominant hand is in front of the body with the palm facing upwards toward the dominant hand. The dominant hand moves down from the chin to the non-dominant hand and cups it."
  ];

  // Image Name List Here
  var imgList = [
    "assets/gifs/airplane.gif",
    "assets/gifs/ambulance.gif",
    "assets/gifs/bathroom.gif",
    "assets/gifs/beautiful.gif",
    "assets/gifs/brother.gif",
    "assets/gifs/children.gif",
    "assets/gifs/clothes.gif",
    "assets/gifs/cold.gif",
    "assets/gifs/emergency.gif",
    "assets/gifs/enjoy.gif",
    "assets/gifs/father.gif",
    "assets/gifs/fever.gif",
    "assets/gifs/food.gif",
    "assets/gifs/good_luck.gif",
    "assets/gifs/goodbye.gif",
    "assets/gifs/happy.gif",
    "assets/gifs/heart_attack.gif",
    "assets/gifs/hello.gif",
    "assets/gifs/help.gif",
    "assets/gifs/hot.gif",
    "assets/gifs/husband.gif",
    "assets/gifs/love.gif",
    "assets/gifs/mother.gif",
    "assets/gifs/parents.gif",
    "assets/gifs/police.gif",
    "assets/gifs/run.gif",
    "assets/gifs/sorry.gif",
    "assets/gifs/sister.gif",
    "assets/gifs/taxi.gif",
    "assets/gifs/thankyou.gif",
    "assets/gifs/today.gif",
    "assets/gifs/tommorow.gif",
    "assets/gifs/water.gif",
    "assets/gifs/weakness.gif",
    "assets/gifs/wife.gif",
  ];

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.chevron_left),
        //   onPressed: () => Navigator.pop(context, false),
        // ),
        title: const Text(
          ' Basic Signs',
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
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: const TextStyle(
                            fontSize: 25,
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

showDialogFunc(context, img, title, desc) {
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
            height: 500,
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
                // ignore: avoid_unnecessary_containers
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 12,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
