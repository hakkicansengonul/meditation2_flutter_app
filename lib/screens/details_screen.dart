import 'package:flutter/material.dart';
import 'package:meditation2_flutter_app/Animation/Fade_Animation.dart';
import 'package:meditation2_flutter_app/items/video_items.dart';
import 'package:video_player/video_player.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 35.0,
                          color: Color(0xff6065a2),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
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
              height: 10.0,
            ),
            FadeAnimation(
              1.0,
              Container(
                height: 300.0,
                width: double.infinity,
                //color: Colors.red,
                child: Center(
                    child: VideoItems(
                  videoPlayerController: VideoPlayerController.network(
                      "https://player.vimeo.com/external/136216234.mobile.mp4?s=9f3b9f4a6bb85c51c1bad519f57fc7fee612156c&profile_id=116"),
                  looping: true,
                  autoplay: true,
                )),
              ),
            ),
            // SizedBox(height: 10.0,),
            FadeAnimation(
              1.1,
              Container(
                height: 150.0,
                width: 500.0,
                // color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: ListView(
                    children: [
                      Text(
                        "Yoga is a physical, mental and spiritual practice that originated in India. "
                        "It tries to achieve tranquility in mind and soul through yoga, poses and meditation. "
                        "Although it is applied physically, its benefits show mental and spiritual effects. "
                        "In other words, yoga is a journey that you will take with your mind and body.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 300.0,
                width: double.infinity,
                child: GridView.count(
                  childAspectRatio: 3.0,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Chapter("Chapter 1"),
                    Chapter("Chapter 2"),
                    Chapter("Chapter 3"),
                    Chapter("Chapter 4"),
                    Chapter("Chapter 5"),
                    Chapter("Chapter 6"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Chapter(String title) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xff6065a2),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.3), offset: Offset(0, -2.0)),
        ]),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Container(
            height: 60.0,
            width: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/12/24/08/45/pregnant-woman-doing-yoga-4716242_1280.png"),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.play_circle_fill,
                  size: 30.0,
                  color: Colors.white,
                ),
                onPressed: () {}),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}
