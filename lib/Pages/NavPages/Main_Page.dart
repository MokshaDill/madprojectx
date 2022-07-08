import 'package:flutter/material.dart';
import 'package:madprojectx/Pages/NavPages/BarItemPage.dart';
import 'package:madprojectx/Pages/NavPages/Home_page.dart';
import 'package:madprojectx/Pages/NavPages/LocationPage.dart';
import 'package:madprojectx/Pages/NavPages/TagItemPage.dart';
import 'package:madprojectx/Resourses/App_Logo.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List Pages = [
    const HomePage(),
    LocationPage(),
    const BarItemPage(),
    const TagPage(),
  ];

  List Names = [
    "Home",
    "Location",
    "Tags",
    "Flags",
  ];

  int currentIndex=0;
  int name=0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
      name=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _key,

      backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: ()  => _key.currentState!.openDrawer(),

        ),
        title: Text(Names[name]),
        actions: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: IconButton(
                  icon:Icon(Icons.account_circle),
                  onPressed: () {  },
                 ),
               ),
        ],
        backgroundColor: Colors.grey,
        elevation: 18,
      ),

      drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,

           children: [ const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Color(0xff967fb3),
                   image: DecorationImage(

                       fit: BoxFit.fill,
                       image: NetworkImage(

                         'https://img.etimg.com/thumb/msid-91480863,width-650,imgsize-192030,,resizemode-4,quality-100/food-delivery-platform.jpg',

                       )

                   ),

              ),



              accountName: Text(
                "APP NAME",
                style: TextStyle(
                  color: Colors.greenAccent,
                  //backgroundColor: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),
              ),
              accountEmail: Text(
                "MAD FEST 2022",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              // currentAccountPicture: ,

            ),

             //const SizedBox(height: 20,),
             Center(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 //crossAxisAlignment: CrossAxisAlignment.start,
                 children:[
                   Column(
                     children: const [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: CircleAvatar(
                           radius: 20,
                           //backgroundImage: AssetImage('assets/avatar1.jpg'),
                         ),
                       ),
                     ],
                   ),

                   Column(
                     children: [
                       Row(
                         children: const [Text("Customer Name")],
                       ),
                       const Text("Location")
                     ],
                   ),

                 ],
               ),
             ),

            ListTile(
              leading: const Icon(
                Icons.account_circle,
              ),
              title: const Text('New Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.reset_tv,
              ),
              title: const Text('Reset Options'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const AboutListTile( // <-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              child: Text('About app'),
              applicationIcon: Icon(
                Icons.local_play,
              ),
              applicationName: '--MAD FEST2022--',
              applicationVersion: '1.0',
              applicationLegalese: '© NSBM IT Department',
              aboutBoxChildren: [
                Text("NSBM IT Department NSBM IT DepartmentNSBM IT Department NSBM IT Department NSBM IT Department NSBM IT Department NSBM IT Department ")
              ],
            ),

             const SizedBox(height: 180,),

             ListTile(
               leading: const Icon(
                 Icons.account_circle_outlined,
               ),
               title: const Text('Sign Out'),
               onTap: () {
                 Navigator.pop(context);
               },
             ),
          ],
        ),
      ),

      body: Pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black12,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(1.0),

          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,

        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label :('Location')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label :('PlusMark')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              label :('Flag')
          ),
        ]
      ),
    );
  }
}
