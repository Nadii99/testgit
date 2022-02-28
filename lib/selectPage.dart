import 'package:flutter/material.dart';
import 'package:test2/videoPage.dart';
import 'package:test2/video_player.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {

  


  List img = [
    'assets/Picture6.png',
    'assets/Picture7.png',
    'assets/Picture6.png',
    'assets/Picture7.png',
    'assets/Picture7.png',

  ];



  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
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
                        height: myHeight * 0.3,
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
                          child:  InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoExample())); 
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'فصل 5',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/Picture11.png',
                          width: myWidth * 0.05,
                        ),
                        SizedBox(width: myWidth * 0.07),
                        Image.asset(
                          'assets/Picture12.png',
                          width: myWidth * 0.05,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                              horizontal: 25, vertical: 3),
                          child: Text(
                            'ایران',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )),
                    Container(
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
                              horizontal: 25, vertical: 3),
                          child: Text(
                            'جنایی',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )),
                    Container(
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
                              horizontal: 25, vertical: 3),
                          child: Text(
                            'بهترین',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )),
                    Container(
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
                              horizontal: 25, vertical: 3),
                          child: Text(
                            'سریال',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'توضیحات',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'فصل ها',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5,left: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'لورم ایپسوم',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'لورم ایپسوم متن ساختگی با',
                                  //'......',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'تولید سادگی نامفهوم از صنعت چاپ ',
                                  //'......',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal),
                                ),
                               
                              ],
                            ),
                          ),
                         
                          Row(
                            children: [
                               Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                               '',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                               '',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                               '',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                               '',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '201' + (index+5) .toString(),
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: myWidth*0.03,
                          ),
                              Container(
                                child: Image.asset(
                                  img[index],
                                  width: myWidth * 0.35,
                                  height: myHeight*0.1,
                                ),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
