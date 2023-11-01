import 'package:flutter/material.dart';
import 'package:game/app_image.dart';

class ScratchGame extends StatefulWidget {
  const ScratchGame({super.key});

  @override
  State<ScratchGame> createState() => _ScratchGameState();
}

class _ScratchGameState extends State<ScratchGame> {
  int a=0;
  int b=2;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(AppImages.background), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          height: size.height/1.8,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white.withOpacity(.9)),
          child: GridView.builder(
            padding: const EdgeInsets.only(top:26),
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing:12,
              childAspectRatio: 0.88
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: (){
                  print("qwerty");
                  if(a==0){
                  b=0;
                  print(b);
                  setState(() {});
                  }
                  },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    image:  DecorationImage(
                      image: NetworkImage(
                        (b==0)?AppImages.imageTwo:(b==1)?AppImages.imageOne:AppImages.imageBlack,
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
