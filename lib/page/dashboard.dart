import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/Category_widget.dart';
import 'package:flutter_app/widget/Nilai_widget.dart';
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
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/educ.jpg"),fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
                                    height: 50,
                                    width: 50,
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
                                    "Hi, Welcome to Student Pans",
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
                            decoration: InputDecoration(hintText: "Search Here", prefixIcon: Icon(Icons.search_sharp),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 3),
                                borderRadius: BorderRadius.circular(10),
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
                      Category(imagePath: "assets/images/class.png", title: "Class"),
                      Category(imagePath: "assets/images/scholar.png", title: "Graduated"),
                      Category(imagePath: "assets/images/video.png", title: "Skill"),
                    ],
                  ),
                ),
      
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                      "Class Data List 🎓",
                      style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
      
              Nilai(
                imagePath: "assets/images/edub.jpg",
                nameData: "Class Data A",
                rating: "4.5",
                kelas: "Class teacher name",
              ),

              SizedBox(height: 3),

              Nilai(
                imagePath: "assets/images/educ.jpg",
                nameData: "Class Data B",
                rating: "4.6",
                kelas: "Class teacher name",
              ),

              SizedBox(height: 3),

              Nilai(
                imagePath: "assets/images/edua.jpg",
                nameData: "Class Data C",
                rating: "4.5",
                kelas: "Class teacher name",
              ),

              SizedBox(height: 3),

              Nilai(
                imagePath: "assets/images/teacher2.jpg",
                nameData: "Class Data D",
                rating: "4.5",
                kelas: "Class teacher name",
              ),
            ],
          ) 
        ),
      ),
    );
  }
}