import 'package:flutter/material.dart';


class BuildingDetails extends StatefulWidget {
  const BuildingDetails({super.key});

  @override
  State<BuildingDetails> createState() => _BuildingDetailsState();
}

class _BuildingDetailsState extends State<BuildingDetails> {
  final double _bottomBarHeight = 100.0;
  final double _fabHeight = 56.0;
  final double _imageHeight = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Stack(
        children: [
          
          Column(
            children: [
              _buildBackground(),

              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                      child: Icon(Icons.notifications_active_outlined),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.apartment, size: 20),
                            SizedBox(width: 5),
                            Text('ساختمان نیایش (مدیر)'),
                            SizedBox(width: 30),
                            Icon(Icons.menu, size: 15)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              
              SizedBox(height: 15),

              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: _bottomBarHeight - (_fabHeight / 2) + 10),
                  child: Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: _buildImageWithIcons(),
                      ),

                      
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.people_outline_outlined),
                                    SizedBox(width: 5),
                                    Column(
                                      children: [
                                        Text('PIHCQ12', style: TextStyle(color: Colors.grey)),
                                        SizedBox(height: 3),
                                        Text('کد ساختمانی', style: TextStyle(color: Colors.grey, fontSize: 8))
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 5),
                                    Text('ساختمان نیایش', style: TextStyle(fontWeight: FontWeight.bold)),
                                    Icon(Icons.note_add_outlined, size: 25, color: Colors.grey)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('مسکونی', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                                    SizedBox(width: 10),
                                    Text('نوع کاربری', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.grey)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.house_outlined, size: 25, color: Colors.grey),
                                    SizedBox(width: 20),
                                    Text('ساختمان', style: TextStyle(fontWeight: FontWeight.bold))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('نوع بنا', style: TextStyle(color: Colors.grey, fontSize: 15)),
                                    SizedBox(width: 7),
                                    Icon(Icons.apartment_sharp, size: 25, color: Colors.grey)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('13', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text('واحد ها', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 6),
                                    Icon(Icons.layers, color: Colors.grey, size: 20)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text('طبقات', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                                    SizedBox(width: 10),
                                    Icon(Icons.stairs, color: Colors.grey, size: 20)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text('بلوک ها', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                                    SizedBox(width: 10),
                                    Icon(Icons.business, size: 20, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('13', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text('واحد های پر', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 6),
                                    Icon(Icons.layers, color: Colors.grey, size: 20),
                                  ],
                                ),
                                SizedBox(width: 20),
                                SizedBox(width: 20),
                                Row(
                                  children: [
                                    Text('13', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text(' واحد های خالی', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 6),
                                    Icon(Icons.layers, color: Colors.grey, size: 20)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text('ساکن/مالک', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 10),
                                    Icon(Icons.maps_home_work_outlined, size: 20, color: Colors.grey)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text('ساکنین', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 6),
                                    Icon(Icons.home, size: 20, color: Colors.grey)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                                    SizedBox(width: 10),
                                    Text('مالکین', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 6),
                                    Icon(Icons.person_pin_sharp, size: 20, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.gps_fixed_outlined, size: 20, color: Colors.grey)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('پردیسان،مجتمع زیتون2', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 5),
                                    Icon(Icons.public, size: 25, color: Colors.grey)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_left, size: 40, color: Colors.grey),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('مدیریت حساب های بانکی', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 10),
                                    Icon(Icons.wallet, size: 25, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_left, size: 40, color: Colors.grey),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('واگذاری مدیریت ساختمان', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 10),
                                    Icon(Icons.swap_horiz, size: 25, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_left, size: 40, color: Colors.grey),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('مدیریت شارژ و تراکنش های خودکار(1)', style: TextStyle(color: Colors.grey)),
                                    SizedBox(width: 10),
                                    Icon(Icons.home_filled, size: 25, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_left, size: 40, color: Colors.grey),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'مدیریت مشاعات ساختمان',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.volunteer_activism, size: 25, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.grey[300]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_left, size: 40, color: Colors.grey),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'کارمندان ساختمان(هییت مدیره،نگهبان،سرایدار،باغبان)',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.people_outline_outlined, size: 25, color: Colors.grey)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: 500,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 1, 92, 167),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'مدیریت واحد ها',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(height: 80,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: _bottomBarHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_home_outlined, size: 25, color: Colors.grey),
                        SizedBox(height: 3),
                        Text('مشخصات', style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bar_chart, size: 25, color: Colors.grey),
                        SizedBox(height: 3),
                        Text('گزارشات کلی', style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                    
                    SizedBox(width: 0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email_outlined, size: 25, color: Colors.grey),
                        SizedBox(height: 3),
                        Text('پیام ها', style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.roller_shades_outlined, size: 25, color: Colors.grey),
                        SizedBox(height: 3),
                        Text('هزینه ها', style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          
          Positioned(
            bottom: _bottomBarHeight - (_fabHeight),
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add, size: 25, color: Colors.white),
                    backgroundColor: const Color.fromARGB(213, 50, 175, 173),
                    elevation: 8,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text('دسترسی سریع', style: TextStyle(color: Colors.grey, fontSize: 10)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return  Container(
        color: Colors.blue[200]!,
      );
  }

  Widget _buildImageWithIcons() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/buildd.jpg',
            width: double.infinity,
            height: _imageHeight,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.settings, color: Colors.grey, size: 20),
          ),
        ),
        
      ],
    );
  }
}


