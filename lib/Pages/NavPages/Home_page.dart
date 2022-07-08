import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


final List<String> images = [
  'https://media.istockphoto.com/photos/young-woman-snorkeling-with-coral-reef-fishes-picture-id939931682?s=612x612',
  'https://media.istockphoto.com/photos/woman-relaxing-in-sleeping-bag-on-red-mat-camping-travel-vacations-in-picture-id1210134412?s=612x612',
  'https://media.istockphoto.com/photos/green-leaf-with-dew-on-dark-nature-background-picture-id1050634172?s=612x612',
  'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?s=612x612',
  // 'https://www.istockphoto.com/en/photo/woman-standing-and-looking-at-lago-di-carezza-in-dolomites-gm1038870630-278083784',
  'https://media.istockphoto.com/photos/picturesque-morning-in-plitvice-national-park-colorful-spring-scene-picture-id1093110112?s=612x612',
  'https://media.istockphoto.com/photos/connection-with-nature-picture-id1174472274?s=612x612',
  'https://media.istockphoto.com/photos/in-the-hands-of-trees-growing-seedlings-bokeh-green-background-female-picture-id1181366400',
  'https://media.istockphoto.com/photos/winding-road-picture-id1173544006?s=612x612',
  'https://media.istockphoto.com/photos/sunset-with-pebbles-on-beach-in-nice-france-picture-id1157205177?s=612x612',
  'https://media.istockphoto.com/photos/waves-of-water-of-the-river-and-the-sea-meet-each-other-during-high-picture-id1166684037?s=612x612',
  'https://media.istockphoto.com/photos/happy-family-mother-father-children-son-and-daughter-on-sunset-picture-id1159094800?s=612x612',
  'https://media.istockphoto.com/photos/butterflies-picture-id1201252148?s=612x612',
  'https://media.istockphoto.com/photos/beautiful-young-woman-blows-dandelion-in-a-wheat-field-in-the-summer-picture-id1203963917?s=612x612',
  'https://media.istockphoto.com/photos/summer-meadow-picture-id1125637203?s=612x612',
];

class _HomePageState extends State<HomePage> {

  List<bool> numberTruthList = [true, true, true, true , true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 42,),

            // Container(
            //
            //   child: Center(
            //
            //     child: AnimatedOpacity(
            //       opacity: 0.5,
            //       duration: const Duration(milliseconds: 500),
            //
            //       child: Container(
            //         width: MediaQuery.of(context).size.width * 0.9,
            //         height: 200.0,
            //         child: Container(
            //
            //         ),
            //
            //
            //
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.green,
            //
            //
            //         ),
            //
            //       ),
            //     ),
            //   ),
            // ),


            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: SizedBox(
                height: 200.0,
                width: MediaQuery.of(context).size.width * 0.9,

                child: Carousel(
                  dotSpacing: 15.0,
                  dotSize: 6.0,
                  dotIncreasedColor: Colors.black54,
                  dotBgColor: Colors.transparent,
                  indicatorBgPadding: 10.0,
                  dotPosition: DotPosition.topCenter,
                  images: images
                      .map((item) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                    ),
                  ))
                      .toList(),
                ),
              ),
            ),


            const SizedBox(height: 20,),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  textDirection: TextDirection.ltr,

                  children: [

            //       Container(
            //         color: Colors.green,
            //         child: const Material(
            //           child: ListTile(
            //             title: Text('ListTile with red background'),
            //             tileColor: Colors.red,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         color: Colors.green,
            //         child: const Material(
            //           child: ListTile(
            //             title: Text('ListTile with red background'),
            //             tileColor: Colors.red,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         color: Colors.green,
            //         child: const Material(
            //           child: ListTile(
            //             title: Text('ListTile with red background'),
            //             tileColor: Colors.red,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         color: Colors.green,
            //         child: const Material(
            //           child: ListTile(
            //             title: Text('ListTile with red background'),
            //             tileColor: Colors.red,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         color: Colors.green,
            //         child: const Material(
            //           child: ListTile(
            //             title: Text('ListTile with red background'),
            //             tileColor: Colors.red,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                     ),
            ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 40,
                            child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                            backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                            //backgroundImage: AssetImage('assets/avatar1.jpg'),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const [
                                        TextSpan(
                                          text: 'hello :  ',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text:
                                          'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 40,
                          child: Text('M',style: TextStyle(color: Colors.black87,fontSize: 50),),
                          backgroundImage: NetworkImage('https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1'),
                          //backgroundImage: AssetImage('assets/avatar1.jpg'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                        text: 'hello :  ',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                        'the comment comment the comment comment the comment comment comment comment the comment comment the comment comment',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),



                ],
             ),
              )
            )
          ],
        ),
      ),
    );
  }
}


