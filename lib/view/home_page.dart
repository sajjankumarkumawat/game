import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game/app_image.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  bool ram = true;
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ram == 1
              ? Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      image: DecorationImage(
                          image: NetworkImage(
                              ""),
                          fit: BoxFit.cover)),
                )
              :
                  Container(
                      height: size.height,
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/2f/27/03/2f270351819d7c0a900b1e9e6dd895bd.gif"),
                              fit: BoxFit.cover)),
                    ),

          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  height: 390,
                  width: 350,
                  color: Colors.white.withOpacity(.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 6),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    if(ram==1){
                                      setState(() {
                                        a == 1;
                                      });
                                    }
                                    else{
                                      a==0;
                                      ram==0;
                                      setState(() {});
                                    }

                                  },
                                  child: Container(
                                    height: 100,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: (a == 1)
                                        ? Image.network(
                                            AppImages.imageTwo,
                                            fit: BoxFit.cover,
                                          )
                                        : (a == 2)
                                            ? Image.network(
                                                AppImages.imageOne,
                                                fit: BoxFit.cover,
                                              )
                                            : null,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    (ram == 0) ? b-- : b++;
                                    ram==1;

                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: (b == 1)
                                        ? Image.network(
                                            AppImages.imageOne,
                                            fit: BoxFit.cover,
                                          )
                                        : (b == 2)
                                            ? Image.network(
                                                AppImages.imageTwo,
                                                fit: BoxFit.cover,
                                              )
                                            : null,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    (ram == 1) ? c-- : c++;


                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: (c == 1)
                                        ? Image.network(
                                            AppImages.imageOne,
                                            fit: BoxFit.cover,
                                          )
                                        : (c == 2)
                                            ? Image.network(
                                                AppImages.imageTwo,
                                                fit: BoxFit.cover,
                                              )
                                            : null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 6),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://t4.ftcdn.net/jpg/01/25/86/35/360_F_125863509_jaISqQt7MOfhOT3UxRTHZoEbMmmFYIr8.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://t4.ftcdn.net/jpg/01/25/86/35/360_F_125863509_jaISqQt7MOfhOT3UxRTHZoEbMmmFYIr8.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://t4.ftcdn.net/jpg/01/25/86/35/360_F_125863509_jaISqQt7MOfhOT3UxRTHZoEbMmmFYIr8.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 6),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://t4.ftcdn.net/jpg/01/25/86/35/360_F_125863509_jaISqQt7MOfhOT3UxRTHZoEbMmmFYIr8.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://t4.ftcdn.net/jpg/01/25/86/35/360_F_125863509_jaISqQt7MOfhOT3UxRTHZoEbMmmFYIr8.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://t4.ftcdn.net/jpg/01/25/86/35/360_F_125863509_jaISqQt7MOfhOT3UxRTHZoEbMmmFYIr8.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
