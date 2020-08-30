import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Press Floating Action Button');
        },
        backgroundColor: Color(0xFF22215B),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Your Dribbbox',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF22215B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('assets/img/union.png'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/side-menu');
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,
                    color: Color(0xFF22215B),),
                  hintText: 'Search Folder',
                  hintStyle: TextStyle(fontSize: 16,
                      color: Color(0xFF22215B)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xFFEEF2FE),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xFFEEF2FE),
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              homeBody(),
            ],
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
Widget homeBody() {
  return Expanded(
    child: ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        recentFolders(),
      ],
    ),
  );
}

Widget recentFolders() {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Recent',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF22215B),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset('assets/img/arrow.png'),
            ],
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Image.asset('assets/img/union-2.png'),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/img/box.png'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFEEF7FE),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/img/folder.png'),
                IconButton(
                  icon: Image.asset('assets/img/more-option.png'),
                  onPressed: () {
                    print('more');
                  },
                ),
              ],
            ),
            Text(
              'Mobile Apps',
              style: TextStyle(
                color: Color(0xFF415EB6),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              'December 20.2020',
              style: TextStyle(
                color: Color(0xFF415EB6),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFBEC),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/img/folder-1.png'),
                IconButton(
                  icon: Image.asset('assets/img/more-option-1.png'),
                  onPressed: () {
                    print('more');
                  },
                ),
              ],
            ),
            Text(
              'SVG Icons',
              style: TextStyle(
                color: Color(0xFFFFB110),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              'December 14.2020',
              style: TextStyle(
                color: Color(0xFFFFB110),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFFEEEEE),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/img/folder-2.png'),
                IconButton(
                  icon: Image.asset('assets/img/more-option-2.png'),
                  onPressed: () {
                    print('more');
                  },
                ),
              ],
            ),
            Text(
              'References',
              style: TextStyle(
                color: Color(0xFFAC4040),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              'November 22.2020',
              style: TextStyle(
                color: Color(0xFFAC4040),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFF0FFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/img/folder-3.png'),
                IconButton(
                  icon: Image.asset('assets/img/more-option-3.png'),
                  onPressed: () {
                    print('more');
                  },
                ),
              ],
            ),
            Text(
              'Avatars',
              style: TextStyle(
                color: Color(0xFF23B0B0),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              'November 10.2020',
              style: TextStyle(
                color: Color(0xFF23B0B0),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
