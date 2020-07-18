import 'package:dojo/models/story.dart';
import 'package:dojo/widgets/open_story.dart';
import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> with SingleTickerProviderStateMixin {
  List<Story> _stories = [
    Story("assets/dojo2.png", "Your Story"),
    Story("assets/dojo1.png", "DOJO 431"),
    Story("assets/dojo1.png", "DOJO 225"),
    Story("assets/dojo1.png", "DOJO 342"),
    Story("assets/dojo1.png", "DOJO 221"),
    Story("assets/dojo1.png", "DOJO 345"),
    Story("assets/dojo1.png", "DOJO 455"),
    Story("assets/dojo1.png", "DOJO 226"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 90,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _stories.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              Story story = _stories[index];

              return Stack(
                  // alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(
                          width: 3,
                          color: index == 0 ? Colors.grey : Colors.red,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(
                          2,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OpenStory()));
                            },
                            child: Image(
                              image: AssetImage(story.image),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Positioned(
                        bottom: 2,
                        left: 20.0,
                        child: Text(
                          story.name,
                          style: TextStyle(color: Colors.grey),
                        )),
                    index == 0
                        ? Positioned(
                            bottom: 30.0,
                            right: 10.0,
                            child: new CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 10.0,
                              child: new Icon(
                                Icons.add,
                                size: 14.0,
                                color: Colors.white,
                              ),
                            ))
                        : new Container()
                  ]);
            }));
  }
}
