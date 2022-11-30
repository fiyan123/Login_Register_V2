import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/Nilai_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<String> imgList = [
    'https://media.istockphoto.com/id/1296463018/photo/interior-of-a-school-classroom-with-wooden-desks-and-chairs.jpg?b=1&s=170667a&w=0&k=20&c=ozPK4yybzvxw-2wFw2OEaO_kDdpK8gYKccyJRbnUQIY=',
    'https://media.istockphoto.com/id/1296463018/id/foto/interior-ruang-kelas-sekolah-dengan-meja-dan-kursi-kayu.jpg?s=612x612&w=is&k=20&c=_effhjsft-bgQDsxytQ97CzRjvaKeEdNorQGCRuyyRM=',
    'https://media.istockphoto.com/id/1366798987/id/foto/interior-ruang-kelas-sekolah-tradisional-dengan-lantai-kayu-dan-perabotan.jpg?s=612x612&w=0&k=20&c=gJJaNI5cEO8Ry8U5gHFgfe2MORYg_miMdEQd1kk5WcE='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text('Class Page',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Image School",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            CarouselSlider(
                items: imgList.map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    ),
                  ),
                ).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
              ),
            ),
            SizedBox(height: 15),
            CarouselSlider(
                items: imgList.map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    ),
                  ),
                ).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
