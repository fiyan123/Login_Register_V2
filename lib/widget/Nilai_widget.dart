import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nilai extends StatelessWidget {

    final String imagePath;
    final String nameData;
    final String rating;
    final String kelas;

  const Nilai({
    Key? key,
    required this.imagePath,
    required this.nameData,
    required this.rating,
    required this.kelas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10,
            child: Column(
              children: [
                SizedBox(width: double.infinity,
                height: 150,
                child: Image.asset(imagePath ,fit: BoxFit.cover),
                )
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 10, 
            child: SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nameData, style: GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.bold)),

                      SizedBox(height: 10),

                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 5),
                              Text(rating, style: GoogleFonts.montserrat(fontSize: 12)),
                            SizedBox(width: 20),

                            Icon(Icons.person, color: Colors.grey),
                              SizedBox(width: 5),
                            Text(kelas, style: GoogleFonts.montserrat(fontSize: 12)),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
