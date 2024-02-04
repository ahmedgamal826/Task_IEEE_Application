import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'models/tracks_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff024272),
        leading: InkWell(
            splashColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/Back Icon.svg',
              ),
            )),
        title: Image.asset(
          'assets/IEEE.png',
          width: 98,
          height: 40,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Tracks',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: tracks.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.white,
                    onTap: () {},
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 178,
                        height: 189,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(31),
                            color: const Color(0xff024272),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  spreadRadius: 0)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              tracks[index].image,
                              width: tracks[index].width,
                              height: tracks[index].height,
                            ),
                            Text(
                              tracks[index].title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: 'Inter'),
                            ),
                            const Text(
                              'Committee',
                              style: TextStyle(
                                  color: Color(0xffFFC13D),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter'),
                            ),
                          ],
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
