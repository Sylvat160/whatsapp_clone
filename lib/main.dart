import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_page.dart';

const dGreen = Color(0xFF2ac0a6);
const dWithe = Colors.white;
const dBlack = Colors.black;
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social media',
      home: HomePage(),
      );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(onPressed: (){}, icon: const Icon(
          Icons.menu,
          color: dWithe,
          size: 30,
          ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: dWithe,
                size: 30,
              ),
            ),
          ],
      ),
      body:Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          Expanded(child: MessageSection()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: dGreen,
        child: const Icon(
          Icons.edit,
          size: 20,
          ),
        ),
    );
  }
}
  final List menuItems = ['Messages', 'Online' , 'Groups', 'Calls'];
class MenuSection extends StatelessWidget{

 final List menuItems = ['Messages', 'Online' , 'Groups', 'Calls'];
   MenuSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context ){
    return Container(
      color: dBlack,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
      children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(
                    color: Colors.white60,
                    fontSize: 15,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}



class FavoriteSection extends StatelessWidget {
  FavoriteSection({Key? key}) : super(key: key);

  final List favoriteContacts = [
    {
      'name': 'Flutter',
      'profile': 'images/avatar/fff.png',
    },
    {
      'name': 'Aphro',
      'profile': 'images/avatar/aaa.png',
    },
    {
      'name': 'KidChris',
      'profile': 'images/avatar/ki.png',
    },
    {
      'name': 'Zoetaba',
      'profile': 'images/avatar/zz.png',
    },
    {
      'name': 'Sylva',
      'profile': 'images/avatar/sy.png',
    },
    {
      'name': 'Plume Gauche',
      'profile': 'images/avatar/eee.png',
    },
    {
      'name': 'Boureima',
      'profile': 'images/avatar/bbbb.png',
    },
  ];
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      padding:const EdgeInsets.all(10),
      child:Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
                  color:dGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
        ),
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Text (
                    "Favorites contacts",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'inter',
                    ),
                  ),
                ),
                const IconButton(
                  icon:Icon (
                    Icons.more_horiz,
                    color:Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                ),
            ],),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoriteContacts.map((favorite){
                  return Container(
                    margin:  const EdgeInsets.only(left:15),
                    child: Column(
                      children:[
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: dWithe,
                            shape:BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage('https://ih1.redbubble.net/image.1057190214.1918/flat,750x1000,075,f.u1.jpg'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          favorite['name'],
                          style : TextStyle(
                            color:Colors.white,
                            fontSize: 13,
                            fontFamily: 'inter',
                          )
                        ),
                        ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class MessageSection extends StatelessWidget{
 MessageSection({Key? key}) : super(key: key);

  final List messages = [
    {
      'senderProfile': 'images/avatar/a2.jpg',
      'senderName': 'Lolas',
      'message': 'La force des idees',
      'unRead': 0,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a3.jpg',
      'senderName': 'Barnabas',
      'message': 'Marketing digital',
      'unRead': 2,
      'date': '16:03',
    },
    {
      'senderProfile': 'images/avatar/a4.jpg',
      'senderName': 'Epiphane',
      'message': 'Dessinateur',
      'unRead': 6,
      'date': '15:16',
    },
    {
      'senderProfile': 'images/avatar/a5.jpg',
      'senderName': 'Flutter',
      'message': 'YOOOOO',
      'unRead': 0,
      'date': '13:58',
    },
    {
      'senderProfile': 'images/avatar/a6.jpg',
      'senderName': 'Zoetaba',
      'message': 'Le competant ...',
      'unRead': 5,
      'date': '10:42',
    },
    {
      'senderProfile': 'images/avatar/a7.jpg',
      'senderName': 'Sylva',
      'message': 'Hello! how are you',
      'unRead': 2,
      'date': '09:30',
    },
    {
      'senderProfile': 'images/avatar/a6.jpg',
      'senderName': 'Aphro',
      'message': 'Borrow money please',
      'unRead': 0,
      'date': '09:07',
    },
    {
      'senderProfile': 'images/avatar/a7.jpg',
      'senderName': 'KidChris',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31',
    }
  ];

  @override
 Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message){
          return InkWell(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => ChatPage(),
                ),
              );
            },
            splashColor: dGreen,
            child: Container(
              padding: EdgeInsets.only(left:30,right:10,top:15),
              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color:dGreen,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://ih1.redbubble.net/image.1057190214.1918/flat,750x1000,075,f.u1.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(message['senderName'],
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'inter',
                              ),
                            ),
                            Wrap(
                              children: [
                                Text(message['message'],
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontFamily: 'inter',
                              ),
                            ),
                              ],
                            ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(message['date'],
                                ),
                                if(message['unRead']>0)
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: dGreen,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      message['unRead'].toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'inter',
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          color:  Colors.grey[400],
                          height: 0.5,
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
          );
        }).toList(),
      )
    );
  }
}