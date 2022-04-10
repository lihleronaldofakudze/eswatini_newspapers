import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Eswatini Newspapers'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 125.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
            ),
            items: ['images/ad1.png', 'images/ad2.png', 'images/ad3.png']
                .map((ad) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image(
                      image: AssetImage('$ad'),
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Eswatini News Sites',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: (MediaQuery.of(context).size.width / 180),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/websites', arguments: {
                    'link': 'http://www.times.co.sz/',
                    'title': 'Times Of Eswatini'
                  });
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Color.fromRGBO(236, 34, 38, 1),
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/times.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/websites', arguments: {
                    'link': 'http://new.observer.org.sz/',
                    'title': 'Eswatini Observer'
                  });
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/observer.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/websites', arguments: {
                    'link': 'http://www.gov.sz/',
                    'title': 'Eswatini Government'
                  });
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/goverment.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.INFO,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'Coming Soon',
                      desc: 'This website is not available yet.',
                      btnOkOnPress: () {},
                      btnOkIcon: Icons.check_circle,
                      btnOkColor: Colors.black,
                      btnOkText: 'Ok')
                    ..show();
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/dailynews.png'))),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/websites', arguments: {
                    'link': 'https://jobs.eswazi.org/',
                    'title': 'Eswatini Jobs'
                  });
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Color.fromRGBO(35, 44, 57, 1),
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/jobs.png'))),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/websites', arguments: {
                    'link': 'https://www.thekingdomofeswatini.com/',
                    'title': 'Eswatini Tourism'
                  });
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/tourism.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/websites', arguments: {
                    'link': 'https://adsifiedhub.com/',
                    'title': 'AdsifiedHub'
                  });
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/adsfiedhub.jpeg'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(new SnackBar(content: Text('Coming Soon')));
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/imoto.jpg'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/websites', arguments: {
                    'link': 'https://independentnews.co.sz/',
                    'title': 'Eswatini Independent News'
                  });
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/independent.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.INFO,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'Coming Soon',
                      desc: 'This website is not available yet.',
                      btnOkOnPress: () {},
                      btnOkIcon: Icons.check_circle,
                      btnOkColor: Colors.black,
                      btnOkText: 'Ok')
                    ..show();
                },
                child: PhysicalModel(
                  elevation: 2.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: Center(
                      child: Text(
                    'Coming soon',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
