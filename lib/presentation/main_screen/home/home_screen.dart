import 'dart:async';

import 'package:flutter/material.dart';
import 'package:growback/model/food_model.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/presentation/main_screen/home/detail/detail_oder/detail_order.dart';
import 'package:growback/presentation/main_screen/home/populer/populer_page.dart';
import 'package:growback/presentation/main_screen/home/promo/promo_page.dart';
import 'package:growback/presentation/main_screen/home/terdekat/terdekat_page.dart';
import 'package:growback/utils/app_asset.dart';
import 'package:growback/utils/app_color.dart';
import 'package:growback/utils/textstyle.dart';
import 'package:growback/widget/carousel.dart';
import 'package:growback/widget/dot_indicator.dart';
import 'package:growback/widget/slider_image_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HomeScreen extends StatefulWidget {
  final String text;

  HomeScreen({Key? key, required this.text}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isVisible = false;

  //Menerima data untuk memunculkan Timer
  void archiveData() async {
    if (widget.text == "Success") {
      startTimer();
      setState(() {
        isVisible = true;
      });
    } else {
      setState(() {
        isVisible = false;
      });
    }
    ;
  }

  late Timer _timer;

  //Fungsi Membuat Timer
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  int _start = 30;

  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    archiveData();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // _timer.cancel();
    super.dispose();
  }

  TerdekatModel terdekatModel = terdekatModelList[0..toString()];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: imageSliderList.length,
                    controller: _pageController,
                    itemBuilder: (context, index) => VisibilityDetector(
                          key: Key(index.toString()),
                          onVisibilityChanged: (VisibilityInfo info) {
                            if (info.visibleFraction == 1) {
                              setState(() {
                                _pageIndex = index;
                              });
                            }
                          },
                          child: SliderImageItem(
                            food: imageSliderList[index],
                          ),
                        )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ...List.generate(
                            imageSliderList.length,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 15),
                                  child: DotIndicator(
                                    isActive: index == _pageIndex,
                                  ),
                                )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Hello Ucok', style: helloStyle),
                        ),
                        Container(
                          height: 36,
                          width: 112,
                          decoration: BoxDecoration(
                            color: AppColor.lightGrey,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/wallet.png',
                                width: 25,
                              ),
                              Text(
                                'Rp.90.000',
                                style: wallet,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    ///Fitur
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Fitur1
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PromoPage()));
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppAsset.image1,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Text('Promo', style: proPoTer)
                          ],
                        ),
                        //Fitur2
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PopulerPage()));
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppAsset.image2,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Text('Populer', style: proPoTer)
                          ],
                        ),
                        //Fitur3
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TerdekatPage()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppAsset.image3,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Text('Terdekat', style: proPoTer)
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Kategori",
                      style: categories,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    ///Kategori
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Kategori1
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    AppAsset.image4,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text(
                              'Nasi Goreng',
                              style: categoriesSub,
                            )
                          ],
                        ),
                        //Kategori2
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    AppAsset.image5,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text('Sate Kambing', style: categoriesSub)
                          ],
                        ),
                        //Kategori3
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    AppAsset.image6,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text('Bubur', style: categoriesSub)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    ///Kategori 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Kategori1
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    AppAsset.image4,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text('Seafood', style: categoriesSub)
                          ],
                        ),
                        //Kategori2
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    AppAsset.image5,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text('Burger', style: categoriesSub)
                          ],
                        ),
                        //Kategori3
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    AppAsset.image6,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text('Mie Ayam', style: categoriesSub)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "Spesial untuk kamu",
                      style: categories,
                    ),
                    const SizedBox(height: 7),
                  ],
                ),
              ),
              const CarouselWidget()
            ],
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isVisible,
        child: InkWell(
          borderRadius: BorderRadius.circular(100 ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailOrder(text: _timer == 0 ? "Mulai":"Selesai",
                terdekatModel: terdekatModel)));
          },
          child: Wrap(
            children: [
              Container(
                height: 105,
                width: 105,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.secondary,
                    image: DecorationImage(
                        image: AssetImage(
                      AppAsset.countdownbg,
                    ))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Waktu Tunggu",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                        )),
                    Text(
                      _start == 0 ? "Selesai" : "$_start",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                        _start == 0
                            ? "Pesananmu Sudah\nSiap"
                            : "Si abangnya lagi\nbuatin pesananmu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
