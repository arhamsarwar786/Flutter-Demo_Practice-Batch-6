import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stack_linkedin_sample/components/custom_bottomsheet.dart';
import 'package:stack_linkedin_sample/components/custom_card.dart';
import 'package:stack_linkedin_sample/components/custom_textfield.dart';
import 'package:stack_linkedin_sample/components/custom_textfield2.dart';
import 'package:stack_linkedin_sample/utils/constants.dart';
import 'package:stack_linkedin_sample/utils/sizes.dart';
import 'package:stack_linkedin_sample/view/landing_screen.dart';

import '../components/custom_alert.dart';
import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = -1;

  final iconController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        // customAlert(context);
        customBottomSheet(context);
      }),
      drawer: Drawer(
        child: Column(children: [
          Container(
            height: 200,
            color: Colors.pink,
          ),
          Text("I love Pakistan"),
          GestureDetector(
              onDoubleTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(seconds: 2),
                      child: LandingScreen(),
                    ));
                // Navigator.push(context, CupertinoPageRoute(builder: (context)=> LandingScreen()  ) );
              },
              onLongPress: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.topToBottom,
                      duration: Duration(seconds: 2),
                      child: LandingScreen(),
                    ));
                // Navigator.push(context, CupertinoPageRoute(builder: (context)=> LandingScreen()  ) );
              },
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: Duration(seconds: 0),
                      child: LandingScreen(),
                    ));
                // Navigator.push(context, CupertinoPageRoute(builder: (context)=> LandingScreen()  ) );
              },
              child: Hero(tag: "arham", child: Text("Move to Next")))
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.30,
              width: size.width,
              // color: primaryColor,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [CustomTextField()],
                  ),
                  Wrap(
                    children: [
                      for (int i = 0; i < iconController.text.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(iconController.text[i]),
                        ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: size.height * 0.70,
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vSpace,
                    Text(
                      'Background',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'List of Emojis',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    vSpace,
                    CustomTextField2(
                      controller: iconController,
                    ),
                    FloatingActionButton(onPressed: () {
                      setState(() {});
                    }),
                    vSpace,
                    Text(
                      'Colors',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Pick a Color',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    vSpace,
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: myColors.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return CustomCard(
                            onTap: () {
                              setState(() {
                                // debugger();
                                selectedIndex = index;
                                primaryColor = myColors[index];
                              });
                            },
                            index: index,
                            selectedIndex: selectedIndex,
                            color: myColors[index],
                          );
                        })
                  ],
                ),
              ),
            ),
            CircularProgressIndicator(
              value: 0.5,
            ),
            LinearProgressIndicator(
              value: 0.5,
            ),
            ExpansionTile(
              backgroundColor: Colors.red,
              title: Text("Open for Demo"),
              children: [
                Text("A"),
                Text("B"),
                Text("C"),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                )
              ],
            ),
            PopupMenuButton(
              tooltip: "Notification here",
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.notification_important),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              iconColor: Colors.cyan,
              iconSize: 100,
              initialValue: "None",
              onSelected: (item) {
                setState(() {
                  // selectedItem = item;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  value: "1",
                  child: Text('Item 1'),
                ),
                const PopupMenuItem(
                  value: "2",
                  child: Text('Item 2'),
                ),
                const PopupMenuItem(
                  value: "3",
                  child: Text('Item 3'),
                ),
                const PopupMenuItem(
                  value: "4",
                  child: Text('Item 4'),
                ),
              ],
            ),
            Container(
              height: 200,
              width: 200,
              // alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.orange,
                    Colors.blue,
                    Colors.purple,
                  ])),
            ),
            SvgPicture.asset("assets/2.svg"),
            DataTable(
              border: TableBorder.all(color: Colors.black, width: 5),
              columns: [
              DataColumn(label: Text("Name", style: TextStyle(fontWeight: FontWeight.bold),)),
              DataColumn(label: Text("Roll Number",style: TextStyle(fontWeight: FontWeight.bold),)),
              DataColumn(label: Text("Class",style: TextStyle(fontWeight: FontWeight.bold),)),
            ], rows: [
              DataRow(cells: [
                DataCell(Text("Arham")),
                DataCell(Text("7")),
                DataCell(Text("1")),
              ]),
               DataRow(cells: [
                DataCell(Text("Ali")),
                DataCell(Text("09")),
                DataCell(Text("1")),
              ]),
               DataRow(cells: [
                DataCell(Text("Subhan")),
                DataCell(Text("79")),
                DataCell(Text("1")),
              ])
            ])
          ],
        ),
      ),
    );
  }
}
