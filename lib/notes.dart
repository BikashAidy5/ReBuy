import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 220,
            width: 268,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 174,
                      width: 269,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage("lib/images/Notes.png"),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: (() {
                          setState(() {
                            isClicked = !isClicked;
                          });
                        }),
                        icon: Icon(
                          Icons.favorite,
                          color: isClicked ? const Color(0xFFFF5858) : Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Pen Tablet",
                              style: GoogleFonts.firaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF3C3C3C),
                              ),
                            ),
                            Text(
                              "2018|Funskool",
                              style: GoogleFonts.firaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFC1839F),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "₹ 899",
                          style: GoogleFonts.firaSans(
                            color: const Color(0xFF3C3C3C),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
