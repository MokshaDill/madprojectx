import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Resourses/User.dart';



class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  final List<User> _users = [
    User("Moksha", "mora", "https://supersimple.com/wp-content/uploads/2016/11/songs_babyshark_thumbnail_supersimpleapp_en-1200w-blog.jpg", false),
    User("chamali", "cha", "https://upload.wikimedia.org/wikipedia/commons/b/ba/Logo-cha.jpg", false),
    User("dimesh", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("Test000", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("Test001", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("Test002", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("Test003", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("Test004", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("apple", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("nayana", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
    User("Yomal", "dim", "https://yt3.ggpht.com/KtOLbZPfi00plewG34AYbg_iJajzlCC-1Ynug-V1NX41jaTd2SaXTrCXoVhLQWNC90szC0YS6A=s900-c-k-c0x00ffffff-no-rj", false),
  ];

  List<User> _foundedUsers = [];


  @override
  void initState() {
    super.initState();

    setState(() {
      _foundedUsers = _users;
    });
  }

  onSearch(String search){
    setState(() {
      _foundedUsers = _users.where((user) => user.name.toLowerCase().contains(search)).toList();
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey,
          title: Container(
            height: 38,
            child:  TextField(
              onChanged: (value) => onSearch(value),
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white24,
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search, color: Colors.white,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  hintText: "Search Items"
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(right: 20,left: 20),
          color: Colors.black26,
          child: ListView.builder(
            itemCount: _foundedUsers.length,
              itemBuilder:(context, index){
                 return userComponent(user: _foundedUsers[index]);
              })
          ),

      );
    }
    userComponent({required User user}){
      return Container(
        // color: Colors.greenAccent,
        padding: EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: ClipRect(

                    child: Image.network(user.image),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Text(user.name, style: TextStyle(color: Colors.grey[500]),)
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  user.isFollowedByMe =!user.isFollowedByMe;
                });
              },
              child: AnimatedContainer(
                height: 35,
                width: 110,
                duration: Duration(microseconds: 300),
                decoration: BoxDecoration(
                  color: user.isFollowedByMe ? Colors.blue : Color(0xffffff),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: user.isFollowedByMe ? Colors.transparent: Colors.grey.shade700)
                ),
                child: Center(
                  child: Text(user.isFollowedByMe ? 'Markerd' : 'Avalable', style: TextStyle(color: user.isFollowedByMe ? Colors.white : Colors.white),),
                ),
              ),
            )
          ],
        ),
      );
    }
  }
