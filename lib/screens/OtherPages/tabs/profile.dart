import 'package:flutter/material.dart';
import 'package:socialapp/screens/OtherPages/editprofile/editprofile.dart';
import 'package:socialapp/styles/styles.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          buildProfileCard(),
          SizedBox(height: 10),
          buildPhotoGrid(),
        ],
      ),
    );
  }

  Widget buildProfileCard() {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.20),
                    blurRadius: 5,
                    offset: Offset(
                      0.0,
                      0.75,
                    ))
              ]),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Profile',
                    style: textArialBoldsecondary(),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('lib/assets/images/user1.png'))),
                  child: Image.asset('')),
              Text(
                'Sansa Stark',
                style: textArialBoldlgSecondary(),
              ),
              Text(
                'Westeros, Seven Kingdoms',
                style: textArialRegularsecondarydull(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Photos',
                        style: textArialRegularsecondarydull(),
                      ),
                      Text(
                        '1234',
                        style: textArialBoldlgSecondary(),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Followers',
                        style: textArialRegularsecondarydull(),
                      ),
                      Text(
                        '1234',
                        style: textArialBoldlgSecondary(),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Following',
                        style: textArialRegularsecondarydull(),
                      ),
                      Text(
                        '1234',
                        style: textArialBoldlgSecondary(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 335,
                height: 44,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfile()),
                    );
                  },
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: secondary)),
                  child: Text(
                    'Edit Profile',
                    style: textArialRegularlgsecondary(),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
            right: 25,
            top: 20,
            child: Image.asset(
              'lib/assets/icons/menuicon.png',
              width: 20,
              height: 20,
            ))
      ],
    );
  }

  Widget buildPhotoGrid() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: MediaQuery.of(context).size.width * 0.475, height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('lib/assets/images/u3.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: MediaQuery.of(context).size.width * 0.475, height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('lib/assets/images/u5.png'),
                      fit: BoxFit.cover)),
            ),
            // GridView.builder(
            //   physics: ScrollPhysics(),
            //   shrinkWrap: true,
            //   scrollDirection: Axis.vertical,
            //   itemCount: 5,
            //   itemBuilder: (BuildContext context, int index) {
            //     return SingleChildScrollView(
            //         child: InkWell(
            //       //               onTap: () {
            //       //                  Navigator.push(
            //       //   context,
            //       //   MaterialPageRoute(builder: (context) => PostDetails()),
            //       // );
            //       //               },
            //       child: Container(
            //         //  margin: EdgeInsets.only(left:5,right: 5),
            //         width: 171,
            //         height: 112,
            //         decoration: BoxDecoration(
            //             color: Colors.grey,
            //             borderRadius: BorderRadius.circular(10),
            //             image: DecorationImage(
            //                 image: AssetImage('lib/assets/images/u3.png'),
            //                 fit: BoxFit.cover)),
            //       ),
            //     ));
            //   },
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       childAspectRatio: MediaQuery.of(context).size.width / 248,
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //       crossAxisCount: 2),
            // ),
          ],
        ),
        SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: MediaQuery.of(context).size.width * 0.475,
              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('lib/assets/images/u7.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: MediaQuery.of(context).size.width * 0.475,
              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('lib/assets/images/u6.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: MediaQuery.of(context).size.width * 0.475,
              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('lib/assets/images/u8.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: MediaQuery.of(context).size.width * 0.475,

              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('lib/assets/images/u9.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        SizedBox(height: 17),
      ],
    );
  }
}
