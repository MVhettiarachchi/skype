
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skype_app/pageviews/chat_list_screen.dart';
import 'package:skype_app/utilize/universal_variable.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int _page =0 ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }
  void onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }
   @override
  Widget build(BuildContext context) {
    double _lableFontSize =10;
    return Scaffold(
      backgroundColor: UniversalVariables.blackColor,
         body: PageView(
           children: [
             Container(child: ChatListScreen(),),
             //(child: Text("Chat List Screen"),),
             Center(child: Text("Call Logs"),),
             Center(child: Text("Contact Screen"),)
           ],
           controller: pageController,
           onPageChanged: onPageChanged,
           physics: NeverScrollableScrollPhysics(),
         ),
         bottomNavigationBar: Container(
           child : Padding(padding: EdgeInsets.symmetric(vertical: 10),
           child: CupertinoTabBar(
             backgroundColor: UniversalVariables.blackColor,
             items: [
               BottomNavigationBarItem(
                  icon: Icon(Icons.chat,
               color:(_page == 0)
               ? UniversalVariables.lightBlueColor
               : UniversalVariables.greyColor),

                title: Text("Chats",
               style: TextStyle(
                 fontSize:_lableFontSize,
                color:(_page == 0)
               ?   UniversalVariables.lightBlueColor
               : UniversalVariables.greyColor),
                
                ),
               ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.call,
               color:(_page == 1)
               ? UniversalVariables.lightBlueColor
               : UniversalVariables.greyColor),

                title: Text("Chats",
               style: TextStyle(
                 fontSize:_lableFontSize,
                color:(_page == 0)
               ?   UniversalVariables.lightBlueColor
               : UniversalVariables.greyColor),
                
                ),
               ),




               BottomNavigationBarItem(
                  icon: Icon(Icons.contact_phone,
               color:(_page == 3)
               ? UniversalVariables.lightBlueColor
               : UniversalVariables.greyColor),

                title: Text("Chats",
               style: TextStyle(
                 fontSize:_lableFontSize,
                color:(_page == 0)
               ?   UniversalVariables.lightBlueColor
               : UniversalVariables.greyColor),
                
                ),
               )
              
             ],

             onTap: navigationTapped,
                          currentIndex: _page,
                        ),
                        )
                      ) ,
                 );
               }
             
               void navigationTapped(int page) {
                 pageController.jumpToPage(page);
  }
}