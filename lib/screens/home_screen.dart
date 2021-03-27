import 'package:flutter/material.dart';
import 'package:meditation2_flutter_app/Animation/Fade_Animation.dart';

import 'details_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.0,
              ),
              FadeAnimation(
                1.0,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "What's your\nmood today ?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            border: Border.all(
                                color: Colors.deepPurpleAccent, width: 1.4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/56843071?v=4"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FadeAnimation(
                1.0,
                Container(
                  height: 270.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    color: Color(0xff6065a2),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          offset: Offset(0.0, 4.0)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        height: 260.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Color(0xff6065a2),
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2020/11/03/13/04/yoga-5709767_1280.png"),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ready to start\nmaditation",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Restore your body peace",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.play_circle_fill),
                                  color: Colors.white,
                                  iconSize: 37.0,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailsPage()));
                                  }),

                              //  SizedBox(width: 4.0,),
                              Text(
                                "20 mins",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 19.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FadeAnimation(
                1.0,
                Container(
                  height: 110.0,
                  width: double.infinity,
                  // color: Colors.red,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MeditationChild(
                          "https://cdn.pixabay.com/photo/2019/12/24/08/46/pregnant-woman-doing-yoga-4716243__480.png",
                          "Breathe"),
                      MeditationChild(
                          "https://cdn.pixabay.com/photo/2020/11/03/10/57/woman-5709415__480.png",
                          "Sleep"),
                      MeditationChild(
                          "https://cdn.pixabay.com/photo/2016/10/14/08/24/consulting-1739639__480.jpg",
                          "Stress"),
                      MeditationChild(
                          "https://cdn.pixabay.com/photo/2017/08/04/07/58/target-2579315__480.jpg",
                          "Focus"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                1.0,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Recently Played",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0),
                      ),
                      Text(
                        "View more",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                1.0,
                Container(
                  height: 300.0,
                  width: double.infinity,
                  // color: Colors.red,
                  child: GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      RecentlyChild(
                          "https://cdn.pixabay.com/photo/2016/10/27/09/59/brain-1773885__480.png",
                          "Mental wellbeing",
                          "05.20 min"),
                      RecentlyChild(
                          "https://cdn.pixabay.com/photo/2017/03/16/20/14/yoga-2150140__480.png",
                          "Intro",
                          "07.30 min"),
                      RecentlyChild(
                          "https://cdn.pixabay.com/photo/2020/06/29/04/48/colorful-tree-of-life-5351363__480.png",
                          "Spiritual growth",
                          "20.45 min"),
                      RecentlyChild(
                          "https://cdn.pixabay.com/photo/2020/06/07/16/12/exercise-5271074_1280.png",
                          "Flexibility",
                          "44.20 min"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget RecentlyChild(String imgUrl, String title, String min) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.grey.withOpacity(.3),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 20.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0)),
          SizedBox(
            height: 5.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.play_circle_fill,
                color: Colors.black,
                size: 30.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                min,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget MeditationChild(String imgUrl, String title) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        Container(
          height: 90.0,
          width: 90.0,
          decoration: BoxDecoration(
              // color: Colors.blue,
              border: Border.all(color: Colors.deepPurpleAccent, width: 1.4),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover)),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        )
      ],
    ),
  );
}
