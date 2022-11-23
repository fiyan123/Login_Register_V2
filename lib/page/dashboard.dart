import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack (
                children: [
                  Container(height: 140, width: double.infinity, color: Colors.blue),
                    Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Padding (
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage("https://assets.jalantikus.com/assets/cache/467/350/userfiles/2020/05/07/31-Custom-57495.jpg")),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 2,
                                      )
                                    ),
                                  ),
                                  SizedBox(width: 10,),
      
                                  Text(
                                    "Hi, Selamat Datang Di Pans Siswa",
                                    style: GoogleFonts.montserrat(color: Colors.white),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.notifications_active, 
                                color: Colors.white,
                                size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
      
                        SizedBox(height: 15),
      
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 60, 
                            width: double.infinity,
                            decoration: BoxDecoration(color: Color(0xFFF5F5F7), borderRadius: BorderRadius.circular(30)),
                              child: TextField(cursorHeight: 20, 
                            decoration: InputDecoration(hintText: "Cari Disini", prefixIcon: Icon(Icons.search_sharp),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
      
                // Row Card
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Category(imagePath: "assets/images/online.png", title: "Education"),
                      Category(imagePath: "assets/images/cap.png", title: "Graduated"),
                      Category(imagePath: "assets/images/scholar.png", title: "Graduated"),
                      Category(imagePath: "assets/images/video.png", title: "Skill"),
                    ],
                  ),
                ),
      
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                    "Daftar Data Kelas 🎓",
                    style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
      
              Nilai(
                imagePath: "assets/images/edub.jpg",
                nameData: "Data Kelas A",
                rating: "4.5",
                kelas: "XI A",
              ),

              SizedBox(height: 3),

              Nilai(
                imagePath: "assets/images/educ.jpg",
                nameData: "Data Kelas B",
                rating: "4.6",
                kelas: "XI B",
              ),

              SizedBox(height: 3),

              Nilai(
                imagePath: "assets/images/edua.jpg",
                nameData: "Data Kelas C",
                rating: "4.5",
                kelas: "XI C",
              ),

              SizedBox(height: 3),

              Nilai(
                imagePath: "assets/images/edua.jpg",
                nameData: "Data Kelas D",
                rating: "4.5",
                kelas: "XI D",
              ),

            ],
          ) 
        ),
      ),
    );
  }
}






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

                            Icon(Icons.school, color: Colors.grey),
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




class Category extends StatelessWidget {

  final String imagePath;
  final String title;

  const Category({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: 50,
          height: 60,
          child: Column(
            children: [
              Image.asset(imagePath, width: 26),
              SizedBox(height: 10),
              Text(title, style: GoogleFonts.montserrat(fontSize: 10)),
            ],
          )
        ),
      ),
    );
  }
}