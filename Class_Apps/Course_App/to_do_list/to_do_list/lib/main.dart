import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  Color? colorChange(int index) {
    switch (index % 4) {
      case 0:
        return const Color.fromRGBO(250, 232, 232, 1);
      case 1:
        return const Color.fromRGBO(232, 237, 250, 1);
      case 2:
        return const Color.fromRGBO(250, 249, 232, 1);
      case 3:
        return const Color.fromRGBO(250, 232, 250, 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 5, right: 8, bottom: 8),
            child: ListView.builder(
                itemCount: 12,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorChange(index),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 10, top: 20),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      height: 5,
                                      width: 5,
                                      child: ClipOval(
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: SvgPicture.asset(
                                            "assets/img.svg",
                                            height: 10,
                                            width: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 400,
                                            height: 40,
                                            child: Text(
                                                "Lorem Ipsum is simply setting industry. ",
                                                style: GoogleFonts.quicksand(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800,
                                                )),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 650,
                                            height: 50,
                                            child: Text(
                                              "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. ",
                                              style: GoogleFonts.quicksand(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromRGBO(
                                                    84, 84, 84, 1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, bottom: 7, right: 12),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 110,
                                    height: 22,
                                    child: Text(
                                      "10 July 2024",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            132, 132, 132, 1),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: 30,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.edit,
                                        color: Color.fromRGBO(0, 139, 148, 1),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const Icon(Icons.delete,
                                          color: Color.fromRGBO(0, 139, 148, 1),
                                          size: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
        ),
      ),
    );
  }
}