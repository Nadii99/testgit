import 'package:flutter/material.dart';
import 'package:test2/selectPage.dart';
import 'package:test2/videoPage.dart';

import 'bottonNavigationBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  




  List img = [
    'assets/Picture2.png',
    'assets/Picture3.png',
    'assets/Picture4.png',
    'assets/Picture4.png',
    'assets/Picture4.png',
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
           bottomNavigationBar: MyNavigator.my_navigator(0, context),
        body: Container(
          height: myHeight,
          width: myWidth,
          child: ListView(
            children: [
              Container(
                height: myHeight * 0.5,
                width: myWidth,
                decoration: BoxDecoration(

                    //color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Picture1.png'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: myHeight * 0.1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                              ]),
                        ),
                        
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: myHeight * 0.2,
                    
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPage())); 
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                      //begin: Alignment.topCenter,
                                      //end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFF4B1F),
                                        Color(0xffFF9068),
                                      ]),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  child: Text(
                                    'دیدن',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'بهترین ها',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffFF4B1F),
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                //color: Colors.green,
                height: myHeight * 0.23,
                width: myWidth,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      // height: myHeight*0.05,
                      width: myWidth * 0.28,
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage(img[index]),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ببینید...',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffFF4B1F),
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                height: myHeight * 0.36,
                width: myWidth,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/Picture5.png'),
                        fit: BoxFit.fitWidth)),
                child: Center(
                  child: Image.asset(
                    'assets/Picture9.png',
                    width: myWidth * .12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 15, bottom: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'جدیدترین ها',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffFF4B1F),
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                //color: Colors.green,
                height: myHeight * 0.2,
                width: myWidth,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, (MaterialPageRoute(builder: (context) => SelectPage())));
                      },
                      child: Container(
                        // height: myHeight*0.05,
                        width: myWidth * 0.7,
                        decoration: BoxDecoration(
                            //color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage('assets/Picture10.png'),
                                fit: BoxFit.fitWidth)),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 15),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'اختصاصی شما',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffFF4B1F),
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                //color: Colors.green,
                height: myHeight * 0.23,
                width: myWidth,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      // height: myHeight*0.05,
                      width: myWidth * 0.28,
                      decoration: BoxDecoration(
                          //color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage(img[index]),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 50),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                          //begin: Alignment.topCenter,
                          //end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffFF4B1F),
                            Color(0xffFF9068),
                          ]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                         vertical: 10),
                      child: Center(
                        child: Text(
                          'بیشتر',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    )),
              ),
            
            ],
          ),
        ));
  }
}
