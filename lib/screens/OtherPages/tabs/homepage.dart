import 'package:flutter/material.dart';
import 'package:socialapp/screens/OtherPages/comments/comments.dart';
import 'package:socialapp/screens/OtherPages/conversations/conversations.dart';
import 'package:socialapp/screens/OtherPages/friendsstory/friendsstory.dart';
import 'package:socialapp/screens/OtherPages/postdetails/postdetails.dart';
import 'package:socialapp/screens/OtherPages/poststatus/poststatus.dart';
import 'package:socialapp/styles/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool fav = true;
  bool fav1 = false;
  bool fav2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: <Widget>[
            Text(
              ' Social',
              style: textArialBoldprimary(),
            ),
            Text(
              ' App',
              style: textArialBoldsecondary(),
            )
          ],
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Conversations()),
              );
            },
            child: Container(
                margin: EdgeInsets.only(right: 15),
                child: Image.asset(
                  'lib/assets/icons/drawer.png',
                  width: 30,
                  height: 30,
                )),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          buildSearchField(),
          SizedBox(height: 10),
          buildStorySection(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: buildPostSection(),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildSearchField() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostStatus()),
        );
      },
      child: Container(
        width: 335,
        height: 55,
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 5)
            ]),
        child: Row(
          children: <Widget>[
            Image.asset(
              'lib/assets/icons/searchfield.png',
              width: 35,
              height: 35,
            ),
            Text("What's on your mind?",
                style: textArialRegularsecondarywithop())
          ],
        ),
      ),
    );
  }

  Widget buildStorySection() {
    return Container(
        margin: EdgeInsets.only(left: 5, right: 5.0),
        height: 110.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            // border: Border.all(color:Colors.grey)
            ),
        child: ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              // print(categoryList.length);
              return SingleChildScrollView(
                  child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          buildYourStoryCard(),
                          buildStoryCard()
                        ],
                      )));
            }));
  }

  Widget buildStoryCard() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FriendsStory()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: primary, width: 2.0),
                      borderRadius: BorderRadius.circular(50),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage('lib/assets/images/user.png'),
                      ),
                    ),
                  )),
              SizedBox(height: 1),
              Text(
                'Adams',
                style: textArialRegularsecondarysmwithop(),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: primary, width: 2.0),
                      borderRadius: BorderRadius.circular(50),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage('lib/assets/images/user1.png'),
                      ),
                    ),
                  )),
              SizedBox(height: 1),
              Text(
                'Eva',
                style: textArialRegularsecondarysmwithop(),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: primary, width: 2.0),
                      borderRadius: BorderRadius.circular(50),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage('lib/assets/images/girl.png'),
                      ),
                    ),
                  )),
              SizedBox(height: 1),
              Text(
                'Jonathan',
                style: textArialRegularsecondarysmwithop(),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: primary, width: 2.0),
                      borderRadius: BorderRadius.circular(50),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage('lib/assets/images/u3.png'),
                      ),
                    ),
                  )),
              SizedBox(height: 1),
              Text(
                'Emily',
                style: textArialRegularsecondarysmwithop(),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: primary, width: 2.0),
                      borderRadius: BorderRadius.circular(50),
                      image: new DecorationImage(
                        fit: BoxFit.contain,
                        image: new AssetImage('lib/assets/images/u4.png'),
                      ),
                    ),
                  )),
              SizedBox(height: 1),
              Text(
                'Eva',
                style: textArialRegularsecondarysmwithop(),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildYourStoryCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 8, right: 0),
      child: Row(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.09), blurRadius: 0.5)
                  ],
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[200]),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Image.asset(
                    'lib/assets/icons/addicon.png',
                    width: 28,
                    height: 26,
                  ),
                )),
            SizedBox(height: 10),
            Text(
              'Your Story',
              style: textArialRegularsecondarysmwithop(),
            )
          ],
        ),
      ]),
    );
  }

  Widget buildPostSection() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostDetails()),
        );
      },
      child: Container(
        // margin: EdgeInsets.only(left: 5, right: 5.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            // border: Border.all(color:Colors.grey)
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          // scrollDirection: Axis.vertical,
          children: [
            buildPost(),
            SizedBox(
              height: 10,
            ),
            buildPost1(),
            SizedBox(
              height: 10,
            ),
            buildPost2(),
            SizedBox(
              height: 10,
            ),
            // ListView.builder(
            //     physics: ScrollPhysics(),
            //     shrinkWrap: true,
            //     scrollDirection: Axis.vertical,
            //     itemCount: 3,
            //     itemBuilder: (BuildContext context, int index) {
            //       return SingleChildScrollView(
            //           child: InkWell(
            //         onTap: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => PostDetails()),
            //           );
            //         },
            //         child: Container(
            //             margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            //             padding: EdgeInsets.all(0),
            //             child: buildPost()),
            //       ));
            //     }),
          ],
        ),
      ),
    );
  }

  Widget buildPost() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.19))],
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 293,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/user.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            width: MediaQuery.of(context).size.width * 0.93,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('lib/assets/images/user1.png'))),
                ),
                Container(
                  padding: EdgeInsets.only(right: 25.0, left: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.29,
                        child: Text(
                          'Sipra Acharya',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textArialBoldSecondary(),
                        ),
                      ),
                      Text(
                        '11 minutes ago',
                        style: textArialRegularsecondarysmwithop(),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                        onTap: () => setState(() => fav = !fav),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: fav ? Colors.red : Colors.grey[300],
                        )),
                    Text(
                      '123',
                      style: textArialRegularsecondarysmwithop(),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Comments()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset('lib/assets/icons/comment.png',
                            width: 30, height: 30),
                        Text(
                          '123',
                          style: textArialRegularsecondarysmwithop(),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/assets/icons/share.png',
                          width: 30, height: 30),
                      Text(
                        '123',
                        style: textArialRegularsecondarysmwithop(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPost1() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.19))],
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 293,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/u8.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            width: MediaQuery.of(context).size.width * 0.93,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('lib/assets/images/user1.png'))),
                ),
                Container(
                  padding: EdgeInsets.only(right: 25.0, left: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.29,
                        child: Text(
                          'Lucy perry',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textArialBoldSecondary(),
                        ),
                      ),
                      Text(
                        '11 minutes ago',
                        style: textArialRegularsecondarysmwithop(),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                        onTap: () => setState(() => fav1 = !fav1),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: fav1 ? Colors.red : Colors.grey[300],
                        )),
                    Text(
                      '123',
                      style: textArialRegularsecondarysmwithop(),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Comments()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset('lib/assets/icons/comment.png',
                            width: 30, height: 30),
                        Text(
                          '123',
                          style: textArialRegularsecondarysmwithop(),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/assets/icons/share.png',
                          width: 30, height: 30),
                      Text(
                        '123',
                        style: textArialRegularsecondarysmwithop(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPost2() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.19))],
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 293,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/u5.png'),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            width: MediaQuery.of(context).size.width * 0.93,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('lib/assets/images/user1.png'))),
                ),
                Container(
                  padding: EdgeInsets.only(right: 25.0, left: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.29,
                        child: Text(
                          'Sanaya',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textArialBoldSecondary(),
                        ),
                      ),
                      Text(
                        '11 minutes ago',
                        style: textArialRegularsecondarysmwithop(),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                        onTap: () => setState(() => fav2 = !fav2),
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: fav2 ? Colors.red : Colors.grey[300],
                        )),
                    Text(
                      '123',
                      style: textArialRegularsecondarysmwithop(),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Comments()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset('lib/assets/icons/comment.png',
                            width: 30, height: 30),
                        Text(
                          '123',
                          style: textArialRegularsecondarysmwithop(),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('lib/assets/icons/share.png',
                          width: 30, height: 30),
                      Text(
                        '123',
                        style: textArialRegularsecondarysmwithop(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
