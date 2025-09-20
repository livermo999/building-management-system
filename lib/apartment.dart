import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _buildBackground(),
            SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(15, MediaQuery.of(context).padding.top + 15, 15, 15),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
             children: [
                Container(
                 padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),     color: Colors.white),
                     child: Icon(Icons.notifications_active_outlined, size: 35),
                    ),
                   SizedBox(width: 10),
                  Expanded(
                   child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),    color: Colors.white),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                Icon(Icons.apartment, size: 35, color: Colors.grey),
                SizedBox(width: 5),
               RichText(
  text: TextSpan(
    text: 'ساختمان نیایش ',
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.black,
    ),
    children: <TextSpan>[
      const TextSpan(
        text: '(',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const TextSpan(
        text: 'مدیر',
        style: TextStyle(
          color: Color.fromARGB(255, 195, 148, 6), 
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      const TextSpan(
        text: ')',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),

                SizedBox(width: 10),
                Icon(Icons.menu, size: 35, color: Colors.grey)
              ],
            ),
          ),
        )
      ],
    ),
                    SizedBox(height: 20),
                    _buildImage(),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_outline_outlined,
                                      size: 35,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'PIHCQ12',
                                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 19),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'کدساختمان',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12,fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'ساختمان نیایش',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.note_add_outlined,
                                      size: 35,
                                      color: Colors.grey,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('مسکونی',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 50),
                                    Text('نوع کاربری',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.grey)),
                                    SizedBox(width: 20,),
                                    Icon(Icons.houseboat_rounded,size: 35,color: Colors.grey,)
                                  ],
                                ),
                                Row(children: [
                                  Text('ساختمان',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 50,),
                                  Text('نوع بنا',style: TextStyle(color: Colors.grey,fontSize: 19,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 20,),
                                  Icon(Icons.house_rounded,size: 35,color: Colors.grey,)
                                ],)
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('13',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Text('واحد ها',style: TextStyle(color: Colors.grey,fontSize: 19,fontWeight: FontWeight.bold)),
                                    SizedBox(width: 20),
                                    Icon(Icons.layers,color: Colors.grey,size: 35)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Text('طبقات',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Icon(Icons.stairs,color:Colors.grey,size: 35)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Text('بلوک ها',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Icon(Icons.business,size: 35,color: Colors.grey)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('13',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 60),
                                    Text('واحد های پر',style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold)),
                                    SizedBox(width: 20),
                                    Icon(Icons.layers,color: Colors.grey,size: 35),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('13',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 60),
                                    Text('واحد های خالی',style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold)),
                                    SizedBox(width: 20),
                                    Icon(Icons.layers_clear,color: Colors.grey,size: 35)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Text('ساکن/مالک',style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold)),
                                    SizedBox(width: 20),
                                    Icon(Icons.maps_home_work_outlined,size: 35,color: Colors.grey)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Text('ساکنین',style: TextStyle(color: Colors.grey,fontSize: 19,fontWeight: FontWeight.bold)),
                                    SizedBox(width: 20),
                                    Icon(Icons.home,size: 35,color: Colors.grey)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
                                    SizedBox(width: 20),
                                    Text('مالکین',style: TextStyle(color: Colors.grey,fontSize: 19,fontWeight: FontWeight.bold)),
                                    SizedBox(width: 20),
                                    Icon(Icons.person_pin_sharp,size: 35,color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.gps_fixed_outlined,size: 35,color: Colors.grey[500]),
                                Row(
                                  children: [
                                    Text('پردیسان ،مجتمع زیتون2',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,fontSize: 17),),
                                    SizedBox(width: 10),
                                    Icon(Icons.public,size: 35,color: Colors.grey[500])
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.grey[500]),
                                Row(
                                  children: [
                                    Text('مدیریت حساب های بانکی',style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 10),
                                    Icon(Icons.wallet,size: 35,color: Colors.grey[500])
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.grey[500]),
                                Row(
                                  children: [
                                    Text('واگذاری مدیریت ساختمان',style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 10),
                                    Icon(Icons.swap_horiz,size: 35,color: Colors.grey[500])
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                          Divider(color: Colors.grey[200]),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.grey[500]),
                              Row(
                                children: [
                                  Text('مدیریت شارژ و تراکنش های خودکار(1)',style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 10),
                                  Icon(Icons.home_filled,size: 35,color: Colors.grey[500])
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.grey[200]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.grey[500]),
                              Row(
                                children: [
                                  Text('مدیریت مشاعات ساختمان',style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 10),
                                  Icon(Icons.volunteer_activism,size: 35,color: Colors.grey[500])
                                ],
                              )
                            ],
                          ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.grey[500]),
                                Flexible(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('(هییت مدیره،نگهیان،سرایدار،باغبان)کارمندان ',
                                        style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(Icons.people_outline_outlined,size: 35,color: Colors.grey[500])
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 74, 137, 237)),
                              child: MaterialButton(onPressed: (){}, child: Text('مدیریت واحد ها',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18))),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.translate(
            offset: const Offset(0, 25),
            child: SizedBox(
              width: 50,
              height: 50,
              child: Transform.rotate(
                angle: 0.78,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.greenAccent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 25, 118, 195).withOpacity(0.4),
                        spreadRadius: 6,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Transform.rotate(
                    angle: -0.78,
                    child: Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'دسترسی سریع',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 216, 234, 248)!,
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add_home_outlined, size: 35, color: Colors.grey),
                SizedBox(height: 3),
                Text('مشخصات', style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.roller_shades_outlined, size: 35, color: Colors.grey),
                SizedBox(height: 3),
                Text('هزینه ها', style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.message_outlined, size: 35, color: Colors.grey),
                SizedBox(height: 3),
                Text('پیام ها', style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.bar_chart_outlined, size: 35, color: Colors.grey),
                SizedBox(height: 3),
                Text('گزارشات کلی', style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildTopBar() {
  //   return Row(
  //     children: [
  //       Container(
  //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
  //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
  //         child: Icon(Icons.notifications_active_outlined, size: 35),
  //       ),
  //       SizedBox(width: 10),
  //       Expanded(
  //         child: Container(
  //           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
  //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Icon(Icons.apartment, size: 35, color: Colors.grey),
  //               SizedBox(width: 5),
  //               RichText(
  //                 text: TextSpan(
  //                   text: 'ساختمان نیایش',
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 20,
  //                     color: Colors.black,
  //                   ),
  //                   children: <TextSpan>[
  //                     TextSpan(
  //                       text: '()مدیر',
  //                       style: TextStyle(
  //                         color: Colors.amber, 
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 20,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(width: 10),
  //               Icon(Icons.menu, size: 35, color: Colors.grey)
  //             ],
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  Widget _buildBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.blue[50]),
    );
  }

  Widget _buildImage() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/buildd.jpg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.8),
                    blurRadius: 6,
                  )
                ]),
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}



