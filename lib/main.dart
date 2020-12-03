
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DefaultTabController(
          length: 4,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Color(0xFF075E54),
                expandedHeight: 100,
                floating: true,
                pinned: true,
                snap: true,
                title: Text("WhatsApp"),
                actions: [
                  Icon(Icons.search),
                  SizedBox(width:10 ,),
                  Icon(Icons.more_vert),


                ],

                flexibleSpace: FlexibleSpaceBar(





                ),

                bottom: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 30),
                  tabs: [ Tab(icon: Icon(Icons.camera_alt) ,),

                    Tab(child: Text("CHATS" ,),),

                    Tab(child: Text("STATUS" , ),),

                    Tab(child: Text("CALLS" , ),),
                  ],
                ),
              ),

              SliverFillRemaining(
                child: Scaffold(
                  body: TabBarView(
                    children: [
                      ChatsPage(), Icon(Icons.arrow_back),
                      Icon(Icons.arrow_back),
                      Icon(Icons.arrow_back),
                    ],
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}



class ChatsPage extends StatefulWidget {


  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  List <String> txtOne = [" lakshmi " , "  Prasad"];
  List <String> txtTwo = [" lakshmi " , "  Prasad"];
  List <String> image = [ "img/aa.jpg"  , "img/mb.jpg"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(child: Container(
      child: Column(
        children: [
          Container(
           height: 200,


            child: ListView.builder(
              itemCount: txtOne.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context , index){
                return ListChatPage( name: txtOne[index],
                msg: txtTwo[index],
                img: image[index],);
              }
            ),
          )

        ],
      ),
    ),));
  }
}

class ListChatPage extends StatefulWidget {
  ListChatPage({ this.msg , this.name , this.img });
  final String name ;
  final String msg ;
  final String img;

  @override
  _ListChatPageState createState() => _ListChatPageState();
}

class _ListChatPageState extends State<ListChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Container(

        child: Column(
          children: [

            ListTile(
              leading:  CircleAvatar(backgroundImage: AssetImage(widget.img),
                radius: 30,),
              title: Text(widget.name),
              subtitle: Text(widget.msg),
              trailing: CircleAvatar(
                backgroundColor: Color(0xFF075E54) ,
                child: CircleAvatar(
                 child: Text("56"),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

