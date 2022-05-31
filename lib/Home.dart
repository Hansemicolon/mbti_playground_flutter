import 'package:flutter/material.dart';
import './Death.dart';

void main()=>runApp(
  const MaterialApp(
    title: 'Navigator',
    home: MyApp(),
  ),
);


class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(title: const Text("MBTI Play Ground"),backgroundColor: Colors.blueAccent,),
          body: Center(
              child:
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child:ListView(
                      // 스크롤 방향 설정. 수평적으로 스크롤되도록 설정
                      scrollDirection: Axis.horizontal,
                        // 컨테이너들을 ListView의 자식들로 추가
                        children: <Widget>[
                          Container(
                            alignment: Alignment(0.0,0.0),
                            width: 100.0,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xff7C89CEFF),
                              shape: BoxShape.circle,
                            ),
                            child: const Text("#ESTP"),
                          ),
                          Container(
                            alignment: const Alignment(0.0,0.0),
                            width: 100.0,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xff5269ECFF),
                              shape: BoxShape.circle,
                            ),
                            child: const Text("#INTJ"),
                          ),
                          Container(
                            alignment: Alignment(0.0,0.0),
                            width: 100.0,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xff3A6CB7FF),
                              shape: BoxShape.circle,
                            ),
                            child: const Text("#ENFJ"),
                          ),
                          Container(
                            alignment: Alignment(0.0,0.0),
                            width: 100.0,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xff2973DEFF),
                              shape: BoxShape.circle,
                            ),
                            child: const Text("#INTP",),
                          ),
                          Container(
                            alignment: Alignment(0.0,0.0),
                            width: 100.0,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xff3150CBFF),
                              shape: BoxShape.circle,
                            ),
                            child: const Text("#ISFJ"
                            ),
                          )
                        ],
                      ),
                  ),
                  Expanded(
                    flex: 3,
                    child:
                    DraggableScrollableSheet(
                      builder: (BuildContext context, ScrollController scrollController){
                        return Container(
                          margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ListView.builder(
                              controller: scrollController,
                              itemCount:25,
                              itemBuilder: (BuildContext context, int index){
                                return ListTile(title: Text("mbti별 검색량 $index"));
                              }),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child:
                        GestureDetector(
                          onTap:(){
                            print("Push Push");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Death()),
                            );
                            print("Push Success");
                          },
                         child: Container(
                           margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 10),
                           height: double.infinity,
                           width: double.infinity,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: const BorderRadius.only(
                                 topLeft: Radius.circular(10),
                                 topRight: Radius.circular(10),
                                 bottomLeft: Radius.circular(10),
                                 bottomRight: Radius.circular(10)
                             ),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.grey.withOpacity(0.5),
                                 spreadRadius: 5,
                                 blurRadius: 7,
                                 offset: Offset(0, 3), // changes position of shadow
                               ),
                             ],
                           ),
                           alignment: Alignment(0.0,0.0),
                           child: const Text("게임입장 하는 곳",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                                 color: Colors.blueAccent
                             ),
                           ),
                         ),
                        ),
                  ),
                ],
              )
          ),
        )
    );
  }
}