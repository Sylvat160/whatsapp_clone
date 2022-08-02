import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';


class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: dBlack,
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios,
          color: Colors.white,
          size:23,
          ),
          onPressed: (){
          Navigator.pop(context);
        },
        ),
        actions:[
          IconButton(
            icon:Icon(Icons.more_vert,
            color: Colors.white,
            size:23,
            ),
            onPressed: (){},
          )
        ],
      ),
       body: const ChatingSection(),
      bottomNavigationBar: const BottomSection(),
    );
  }
}


class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10.0,
      color: dWithe,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 43,
                decoration: const BoxDecoration(
                  color: dGreen,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  children: const [
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.insert_emoticon,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.upload_outlined,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.image,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
              ),
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: dGreen,
                shape: BoxShape.circle,
              ),
              child: const IconButton(
                icon: Icon(
                  Icons.mic_none_sharp,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatingSection extends StatelessWidget {
  final String senderProfile = 'data:image/jpeg;base64,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';
  final String receiverProfile = 'images/avatar/a6.jpg';
  const ChatingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: double.infinity,
      decoration: const BoxDecoration(
        color: dWithe,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Text(
              "Alla Burda",
              style: GoogleFonts.inter(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Was online 56 seconde ago",
              style: GoogleFonts.inter(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 45),
            TextMessage(
              message: "Months on ye at by esteem",
              date: "17:19",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            TextMessage(
              message: "Seen you eyes son show",
              date: "17:13",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 0,
            ),
            TextMessage(
              message: "As tolerably recommend shameless",
              date: "17:10",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 1,
            ),
            TextMessage(
              message: "She although cheerful perceive",
              date: "17:10",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            const ImageMessage(
              image: 'images/avatar/a1.jpg',
              date: "17:09",
              description: "Least their she you now above going stand forth",
            ),
            AudioMessage(date: "18:05", senderProfile: senderProfile),
            TextMessage(
              message: "Provided put unpacked now but bringing. ",
              date: "16:59",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            TextMessage(
              message: "Under as seems we me stuff",
              date: "16:53",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 0,
            ),
            TextMessage(
              message: "Next it draw in draw much bred",
              date: "16:50",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 1,
            ),
            TextMessage(
              message: "Sure that that way gave",
              date: "16:48",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class TextMessage extends StatelessWidget {
  final String message, date, senderProfile;
  final int isReceiver, isDirect;

  const TextMessage({
    Key? key,
    required this.message,
    required this.date,
    required this.senderProfile,
    required this.isReceiver,
    required this.isDirect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          isReceiver == 1 && isDirect == 0
              ? Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: dGreen,
                        size: 13.0,
                      ),
                      const SizedBox(width: 7.0),
                      Text(
                        date,
                        style: GoogleFonts.inter(
                          color: dGreen,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              margin: isReceiver == 1
                  ? const EdgeInsets.only(
                      right: 25,
                    )
                  : const EdgeInsets.only(
                      left: 20,
                    ),
              padding: const EdgeInsets.all(6),
              height: 55,
              decoration: isReceiver == 1
                  ? const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    )
                  : const BoxDecoration(
                      color: dGreen,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
              child: Text(
                message,
                style: GoogleFonts.inter(
                  color: isReceiver == 1 ? dGreen : Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          isReceiver == 1 && isDirect == 0
              ? SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: dGreen,
                        size: 13.0,
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        date,
                        style: GoogleFonts.inter(
                          color: dGreen,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
          isDirect == 0 && isReceiver == 0
              ? Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 10,
                  ),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
          isReceiver == 0 && isDirect == 1
              ? Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 10,
                  ),
                  width: 45,
                  height: 45,
                )
              : Container(),
        ],
      ),
    );
  }
}

class AudioMessage extends StatelessWidget {
  final String date, senderProfile;

  const AudioMessage({
    Key? key,
    required this.date,
    required this.senderProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Row(
            children: [
              Text(
                "17:14",
                style: GoogleFonts.inter(
                  color: dGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 7.0),
              const Icon(
                Icons.check,
                color: dGreen,
                size: 13.0,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              left: 15,
              bottom: 5,
            ),
            padding: const EdgeInsets.all(6),
            height: 55,
            decoration: const BoxDecoration(
              color: dGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                const IconButton(
                  icon: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
                Image.asset(
                  'images/sound-waves.png',
                  height: 35,
                  width: 130,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 10,
          ),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(senderProfile),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageMessage extends StatelessWidget {
  final String image, date, description;

  const ImageMessage({
    Key? key,
    required this.image,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 16,
          ),
          width: 45,
          height: 45,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 26,
                  top: 5,
                ),
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 8,
                  right: 25,
                  bottom: 10,
                ),
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Wrap(children: [
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: dGreen,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.check,
                color: dGreen,
                size: 13.0,
              ),
              const SizedBox(width: 7.0),
              Text(
                "17:14",
                style: GoogleFonts.inter(
                  color: dGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
