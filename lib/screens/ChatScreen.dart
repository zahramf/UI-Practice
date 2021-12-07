import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_2.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bubbles Chat"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.orange[400],
        child: Icon(Icons.description),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7.0,
        child: Container(
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                // onPressed: () {},
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(
                      Icons.delete,
                      size: 20,
                      color: Colors.red,
                    ),
                    new Text(
                      'Delete',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Container(
                // onPressed: () {},
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.blue[700],
                    ),
                    new Text(
                      'Edit',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 25),
              Container(
                // onPressed: () {},
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(
                      Icons.message,
                      size: 20,
                      color: Color(0xff39B4B1),
                    ),
                    new Text(
                      'New Message',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Container(
                // onPressed: () {},
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(Icons.email, size: 20, color: Colors.purple[800]
                        //Color(0xff054972),
                        ),
                    new Text(
                      'New Email',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          //Bubble left
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 2, top: 4),
                child: CircleAvatar(
                  child: Text("A"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ChatBubble(
                        backGroundColor:
                            // Color.fromRGBO(195, 233, 111, 1),
                            Color.fromRGBO(232, 245, 191, 1),
                        //Color(0xffFFFFCC),
                        clipper:
                            ChatBubbleClipper2(type: BubbleType.receiverBubble),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Hello\nHow are you?\nDo you have good day?\nI love you\nBy",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                      // Container(
                      //   decoration: BoxDecoration(
                      //     //color: Colors.lightGreen[100],
                      //     color: Color(0xffACC649).withOpacity(0.3),
                      //     borderRadius: BorderRadius.circular(8),

                      //     gradient: LinearGradient(
                      //         colors: [
                      //           Color(0xffACC649).withOpacity(0.3),
                      //           Colors.lightGreen.shade900
                      //           //Color(0xffACC649)
                      //         ],
                      //         begin: Alignment.topCenter,
                      //         end: Alignment.bottomCenter),
                      //   ),
                      //   child: Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(12.0),
                      //       child: Text(
                      //         "Hello\nHow are you?\nDo you have good day?\nI love you\nBy",
                      //         style: TextStyle(color: Colors.black),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // DecoratedBox(
                      //   decoration: BoxDecoration(
                      //     //color: Colors.lightGreen[100],
                      //     color: Color(0xffACC649).withOpacity(0.3),
                      //     borderRadius: BorderRadius.circular(8),
                      //   ),
                      //   child: Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(12.0),
                      //       child: Text(
                      //         "Hello\nHow are you?\nDo you have good day?\nI love you\nBy",
                      //         style: TextStyle(color: Colors.black),
                      //       ),
                      //     ),
                      //   ),

                      // ),
                      // Positioned(
                      //   left: 0,
                      //   bottom: 0,
                      //   child: CustomPaint(
                      //     painter: Triangle(
                      //       //Colors.lightGreen.shade900
                      //       //Colors.lightGreen[100]
                      //       Color(0xffACC649).withOpacity(0.3),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //Bubble Right

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ChatBubble(
                        backGroundColor:
                            // Color.fromRGBO(159, 221, 242, 1),
                            Color.fromRGBO(214, 244, 254, 1),
                        // Color(0xff90CAE0).withOpacity(0.5),
                        clipper:
                            ChatBubbleClipper2(type: BubbleType.sendBubble),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Hello\nHow are you?\nDo you have good day?\nI love you\nBy",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                      // Positioned(
                      //   right: 0,
                      //   bottom: 0,
                      //   child: CustomPaint(
                      //     painter: Triangle(Color(0xff90CAE0).withOpacity(0.3)),
                      //   ),
                      // ),
                      // DecoratedBox(
                      //   decoration: BoxDecoration(
                      //       color:
                      //           //Colors.lightBlue[50],
                      //           Color(0xff90CAE0).withOpacity(0.3),
                      //       borderRadius: BorderRadius.circular(8)),
                      //   child: Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(12.0),
                      //       child: Text(
                      //         "Hello\nHow are you?\nDo you have good day?\nI love you\nBy",
                      //         style: TextStyle(color: Colors.black),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 2, top: 4),
                child: CircleAvatar(
                  child: Text("A"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Triangle extends CustomPainter {
  final Color _color;
  //final int setColor;

  Triangle(this._color);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = _color;
    var path = Path();
    path.lineTo(10, 0);
    path.lineTo(0, -10);
    path.lineTo(-10, 0);

    // canvas.drawCircle(Offset.zero, 10, paint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
