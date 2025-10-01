import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late final ScrollController _scrollController;
  
  double _imageScale = 1.0;
  double _rotationAngle = 0.0;
  double _imageHeight=200.0;
  bool _isScrollingUp = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        final offset = _scrollController.offset;
        if (offset < 0) {
          setState(() {
            _isScrollingUp = true;
            _imageScale = 1.0 - (offset / 100.0);
            _rotationAngle = -offset * 0.03;
            _imageHeight=200.0-(offset*1.5);
          });
        } else if (_isScrollingUp) {
          setState(() {
            _isScrollingUp = false;
            _imageScale=1.0;
            _rotationAngle=0.0;
            _imageHeight=200.0;
          });
        }
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _buildBackground(),
            SingleChildScrollView(
              controller: _scrollController,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(
                  15, MediaQuery.of(context).padding.top, 15, 15),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child:
                              Icon(Icons.notifications_active_outlined, size: 28),
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 9),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apartment,
                                    size: 30, color: Colors.grey),
                                SizedBox(
                                  width: 72,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'ساختمان نیایش ',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          const TextSpan(
                                            text: '(',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: 'مدیر',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 206, 178, 92),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: ')',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12),
                                Icon(Icons.menu, size: 30, color: Colors.grey)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 14),
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
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'PIHCQ12',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'کدساختمان',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
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
                                          fontSize: 16),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.note_add_outlined,
                                      size: 30,
                                      color: Colors.grey,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 3),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('مسکونی',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 20),
                                    Text('نوع کاربری',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.grey)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.houseboat_rounded,
                                      size: 29,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'ساختمان',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'نوع بنا',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.house_rounded,
                                      size: 29,
                                      color: Colors.grey,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 7),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('13',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 7),
                                    Text('واحد ها',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Icon(Icons.layers,
                                        color: Colors.grey, size: 25)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 7),
                                    Text('طبقات',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 16)),
                                    SizedBox(width: 5),
                                    Icon(Icons.stairs,
                                        color: Colors.grey, size: 25)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 7),
                                    Text('بلوک ها',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 15)),
                                    SizedBox(width: 5),
                                    Icon(Icons.business,
                                        size: 25, color: Colors.grey)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('13',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 20),
                                    Text('واحد های پر',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Icon(Icons.layers,
                                        color: Colors.grey, size: 25),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('13',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 20),
                                    Text('واحد های خالی',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Icon(Icons.layers_clear,
                                        color: Colors.grey, size: 25)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 5),
                                    Text('ساکن/مالک',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Icon(Icons.maps_home_work_outlined,
                                        size: 25, color: Colors.grey)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 5),
                                    Text('ساکنین',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Icon(Icons.home, size: 25, color: Colors.grey)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(width: 5),
                                    Text('مالکین',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Icon(Icons.person_pin_sharp,
                                        size: 25, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.gps_fixed_outlined,
                                    size: 28, color: Colors.grey[500]),
                                SizedBox(
                                  width: 120,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'پردیسان ،مجتمع زیتون2',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.public,
                                        size: 25, color: Colors.grey[500])
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    size: 35, color: Colors.grey[500]),
                                Row(
                                  children: [
                                    Text(
                                      'مدیریت حساب های بانکی',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.wallet,
                                        size: 25, color: Colors.grey[500])
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    size: 35, color: Colors.grey[500]),
                                Row(
                                  children: [
                                    Text(
                                      'واگذاری مدیریت ساختمان',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.swap_horiz,
                                        size: 29, color: Colors.grey[500])
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    size: 35, color: Colors.grey[500]),
                                Row(
                                  children: [
                                    Text(
                                      'مدیریت شارژ و تراکنش های خودکار(1)',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.home_filled,
                                        size: 25, color: Colors.grey[500])
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    size: 35, color: Colors.grey[500]),
                                Row(
                                  children: [
                                    Text(
                                      'مدیریت مشاعات ساختمان',
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.volunteer_activism,
                                        size: 23, color: Colors.grey[500])
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 6),
                            Divider(color: Colors.grey[200]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    size: 35, color: Colors.grey[500]),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: 'کارمندان ساختمان',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '(',
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    'هییت مدیره،نگهبان،سرایدار،باغبان',
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text: ')',
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ]),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.people_outline_outlined,
                                        size: 26, color: Colors.grey[500])
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(
                                      255, 131, 171, 236)),
                              child: MaterialButton(
                                  onPressed: () {},
                                  child: Text('مدیریت واحد ها',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18))),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
            offset: const Offset(0, 34),
            child: SizedBox(
              width: 48,
              height: 48,
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
                        color: const Color.fromARGB(255, 25, 118, 195)
                            .withOpacity(0.4),
                        spreadRadius: 6,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Transform.rotate(
                    angle: -0.78,
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(top: 14.0),
            child: Text(
              'دسترسی سریع',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 232, 242, 250),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, -5),
            ),
          ],
        ),
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_home_outlined, size: 28, color: Colors.grey),
                    Text(
                      'مشخصات',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.roller_shades_outlined,
                        size: 28, color: Colors.grey),
                    SizedBox(height: 0),
                    Text(
                      'هزینه ها',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 60,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.message_outlined, size: 28, color: Colors.grey),
                    Text(
                      'پیام ها',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bar_chart_outlined,
                        size: 28, color: Colors.grey),
                    Text(
                      'گزارشات کلی',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

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
                child:SizedBox(
                  width: double.infinity,
                  height: _imageHeight,
                  child: Transform.scale(
                    scale: _imageScale,
                    alignment: Alignment.center,
                    child: Image.asset(
                  'assets/buildd.jpg',
                  width: double.infinity,
                  
                  fit: BoxFit.cover,
                   ),
                  ),
              ),
            ),   
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 40,
                height: 40,
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
                child: Transform.rotate(
                  angle: _rotationAngle,
                  child: Icon(
                    Icons.settings,
                    size: 28,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        );
      }
    
  }
