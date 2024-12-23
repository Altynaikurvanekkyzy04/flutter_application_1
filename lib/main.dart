import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {},
        icon: Icon(Icons.menu,
        size: 30,
        )),
        title: Text(
  'Search',
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,  
),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://miro.medium.com/v2/resize:fit:554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg',
              
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top:10, left: 8, right: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Discover your favorite',
               style: TextStyle(fontSize: 25,
               height: 1
               )),
               Text('podcast',
               style: TextStyle(
                fontSize: 25,
               ),
               ),
                 Text('Qwerty Washighton'),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: Color.fromARGB(255, 87, 31, 165),
                       ),
                    child: Column(children: [
                      Padding(padding: EdgeInsets.only(right: 100, top: 10),
                     child:  Text('Best Word Press Elegant',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color:Colors.white 
                    ),
                    )),
                    Padding(padding: EdgeInsets.only(right: 200),
                     child:  Text('Themes Blog',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color:Colors.white 
                    ),
                    )),
                    Row(children: [
                      Padding(padding: EdgeInsets.only(top: 40, left: 15),
                     child:  CircleAvatar(radius: 30,
              backgroundImage: NetworkImage(
                'https://miro.medium.com/v2/resize:fit:554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg',
             ),)),
             Padding(padding: EdgeInsets.only(left: 15, top: 40),
             child: Text('Violetta Johnson',
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
             ),
             ),
             ),
             Padding(padding: EdgeInsets.only(left: 80,top: 50),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color: Colors.white,
              size: 50,
              )),
             )
                    ],)
                    ],),
                    ),
                    Container( decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: Color.fromARGB(255, 87, 31, 165),),
                      child:  Column(children: [
                      Padding(padding: EdgeInsets.only(right: 100, top: 10),
                     child:  Text('Best Word Press Elegant',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color:Colors.white 
                    ),
                    )),
                    Padding(padding: EdgeInsets.only(right: 220),
                     child:  Text('Themes Blog',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color:Colors.white 
                    ),
                    )),
                    Row(children: [
                      Padding(padding: EdgeInsets.only(top: 40, left: 15),
                     child:  CircleAvatar(radius: 30,
              backgroundImage: AssetImage(
                'assets/images/1.png',
             ),)),
             Padding(padding: EdgeInsets.only(left: 15, top: 40),
             child: Text('Linkin Park',
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
             ),
             ),
             ),
             Padding(padding: EdgeInsets.only(left: 120,top: 50),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color: Colors.white,
              size: 50,
              )),
             )
                    ],)
                    ],),
                       ),
                    Container( decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: Color.fromARGB(255, 87, 31, 165),),
                      child:  Column(children: [
                      Padding(padding: EdgeInsets.only(right: 100, top: 10),
                     child:  Text('Best Word Press Elegant',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color:Colors.white 
                    ),
                    )),
                    Padding(padding: EdgeInsets.only(right: 220),
                     child:  Text('Themes Blog',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color:Colors.white 
                    ),
                    )),
                    Row(children: [
                      Padding(padding: EdgeInsets.only(top: 40, left: 15),
                     child:  CircleAvatar(radius: 30,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUgQCrqBX5TfIPzgiMLrCQLmMHn8t9O4bAGw&s',
             ),)),
             Padding(padding: EdgeInsets.only(left: 15, top: 40),
             child: Text('Rammstain',
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
             ),
             ),
             ),
             Padding(padding: EdgeInsets.only(left: 120,top: 50),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color: Colors.white,
              size: 50,
              )),
             )
                    ],)
                    ],),
                       ),   
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController, 
                  count: 3, 
                  effect: ExpandingDotsEffect(
                    activeDotColor:Color.fromARGB(255, 87, 31, 165),
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                  ),
                ),
              ),
              Padding(padding:EdgeInsets.only(top: 20),
              child: Text('Trending',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
              ListView( shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  children: [
    SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUgQCrqBX5TfIPzgiMLrCQLmMHn8t9O4bAGw&s',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20, left: 10),
          child: Text('Rammstain',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, right: 15),
          child: Text('Du Hast',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 130),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
    SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://i1.sndcdn.com/artworks-000235644400-5gs8we-t500x500.jpg',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20, left: 10),
          child: Text('Linkin Park',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, right:50),
          child: Text('Run',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 130),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
    SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://i1.sndcdn.com/artworks-000235644400-5gs8we-t500x500.jpg',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20, left:3),
          child: Text('Linkin Park',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, left: 15),
          child: Text('Burn It Down',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 110),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://i1.sndcdn.com/artworks-000235644400-5gs8we-t500x500.jpg',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20, left: 10),
          child: Text('Linkin Park',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5,),
          child: Text('In The End',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 130),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
    SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://i1.sndcdn.com/artworks-000235644400-5gs8we-t500x500.jpg',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20, left: 10),
          child: Text('Linkin Park',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, right: 30),
          child: Text('WWW',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 130),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.pause_circle,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
  ],
  )
            ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomAppBar(
        color: const Color.fromARGB(255, 249, 247, 247),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SecondScreen()));},
            ),
            IconButton(
              icon: Icon(Icons.lock_clock, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}





class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreen();
}
class _SecondScreen extends State<SecondScreen> {
   final ScrollController _controller = ScrollController();
    final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _scrollAutomatically();
  }

  void _scrollAutomatically() {
    Future.delayed(Duration(seconds: 2), () {
      if (_controller.hasClients) {
        _controller.animateTo(
          _controller.offset + 200,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    });
  }


 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        title: Text(
  'Search',
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,  
),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Top Genres',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 220),
                    child: Text('Then All'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: [
                    _buildCarouselItem(
                      'https://avatars.mds.yandex.net/i?id=c0e90a151698ee9f326d234c9a4c1fca_l-5232064-images-thumbs&n=13',
                      'Nature Music',
                      Colors.blue,
                    ),
                    _buildCarouselItem(
                      'https://avatars.mds.yandex.net/i?id=89d8b788edf60ea9436bd6efa216572c_l-2480692-images-thumbs&n=13',
                      'Beach Waves',
                      Colors.green,
                    ),
                    _buildCarouselItem(
                      'https://avatars.mds.yandex.net/i?id=18988ca157d1ac13b8d17f28b3e5b5fe_l-5510085-images-thumbs&n=13',
                      'City Lights',
                      Colors.orange,
                    ),
                  ],
                ),
              ),
             Padding(padding: EdgeInsets.only(top: 20, right: 290),
              child: Text('Browse All',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold
              ),
              ),
              ),
              Expanded(
  child: GridView.builder(
    controller: _controller,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemCount: 10,
    itemBuilder: (context, index) {
      List<String> imageUrls = [
        'https://avatars.mds.yandex.net/i?id=3f99577a1c5f8f7e4c28b4e941944f9ed898e82d-8497168-images-thumbs&n=13',
        'https://masterpiecer-images.s3.yandex.net/d3c4e95c704911ee94492ab2a9c6ab46:upscaled',
        'https://avatars.mds.yandex.net/i?id=12bee8ca2ada3aeecb1c4268f6542d78_l-8199312-images-thumbs&n=13',
        'https://a.d-cd.net/73e9d1s-1920.jpg',
        'https://i1.sndcdn.com/avatars-000021479307-hb30v9-t500x500.jpg',
        'https://avatars.mds.yandex.net/i?id=6d4005f53d84e111fd0403893c7a02ca_l-9065868-images-thumbs&n=13',
        'https://i1.sndcdn.com/artworks-YKyttUiNeRcQ58Ku-cztoaQ-t500x500.jpg',
        'https://avatars.mds.yandex.net/i?id=76f60ecc18f241d1fcb2c3b6d4d34824_l-5586404-images-thumbs&n=13',
        'https://i.dailymail.co.uk/i/pix/2016/01/01/03/2FAB594200000578-3380867-People_playing_on_the_beach_in_Ipanema_Rio_de_Janeiro_was_also_s-a-2_1451618046871.jpg',
        'https://i.ytimg.com/vi/TrLoixqAt3Y/maxresdefault.jpg'
      ];

      List<String> labels = [
        'Музыки в машину',
        'Классика',
        'Джазз',
        'Рок',
        'Метал',
        'Опера',
        'Оркестр',
        'Для отдыха',
        'В компании',
        'Для души'
      ];

      String imageUrl = imageUrls[index % imageUrls.length];
      String label = labels[index % labels.length];

      return Container(
        padding: EdgeInsets.all(4),
        child: Stack( 
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity, 
                height: double.infinity, 
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 150, left: 10),
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    },
  ),
)

            ],
          ),
      ),
      bottomNavigationBar:  BottomAppBar(
        color: const Color.fromARGB(255, 249, 247, 247),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SecondScreen2()));
              },
            ),
            IconButton(
              icon: Icon(Icons.search, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.lock_clock, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: Color.fromARGB(255, 87, 31, 165),
              size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String imageUrl, String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 150, left: 25),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(blurRadius: 10.0, color: Colors.black, offset: Offset(5, 5))
            ],
          ),
        ),
      ),
    );
  }
  

  Widget _buildImageCard(String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        width: 150,
        height: 150, 
      ),
    );
  }
}
  



class SecondScreen2 extends StatefulWidget {
  
  @override
  State<SecondScreen2> createState() => _SecondScreen2();
  
}

class _SecondScreen2 extends State<SecondScreen2> {
  double _currentTime = 0;

  void _updateSlider(double value) {
    setState(() {
      _currentTime = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 30),
        ),
        title: Text(
          'Playing',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 216, 220, 222),
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://yt3.googleusercontent.com/VQHYXisIqc_xhK-SnXj6nSw8pIuA_7wPuBBl2MO3C_KwqhREJ8LDXn0LsXsk42hIxUWOhgP01gc=s900-c-k-c0x00ffffff-no-rj',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'BANTAN-BTS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text('Your Playlist'),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 5),
                child: Row(
                  children: [
                    Text('00:00'),
                   
                    SizedBox(height: 20),
               SizedBox(width: 275,
                child:  Slider(
                value: _currentTime,
                onChanged: _updateSlider,
              ),),
               SizedBox(width: 10),
                    Text('20:16'),
                  ],
                ),
              ),
              Row(children: [
                Padding(padding: EdgeInsets.only(top: 10, left: 20),
                child:  IconButton(onPressed: (){},
                 icon:Icon(Icons.favorite,
                  size: 30,
                  color: Color.fromARGB(255, 87, 31, 165),
                  ))),

                 Padding(padding: EdgeInsets.only(top: 10, left: 10),
                child:  IconButton(onPressed: (){},
                 icon:Icon(Icons.play_arrow_sharp,
                  size: 40,
                  color: Color.fromARGB(255, 87, 31, 165),
                  ))),


                 Padding(padding: EdgeInsets.only(top: 10),
                child:  IconButton(onPressed: (){},
                 icon:Icon(Icons.pause_circle,
                  size: 80,
                  color:Color.fromARGB(255, 87, 31, 165), 
                  ))),

                  Padding(padding: EdgeInsets.only(top: 10),
                child:  IconButton(onPressed: (){},
                 icon:Icon(Icons.play_arrow_sharp,
                  size: 40,
                  color: Color.fromARGB(255, 87, 31, 165),
                  ))),
                   Padding(padding: EdgeInsets.only(top: 15, left: 20),
                child:  IconButton(onPressed: (){},
                 icon:Icon(Icons.comment,
                  size: 30,
                  color: Color.fromARGB(255, 87, 31, 165),
                  ))),
              ],)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 249, 247, 247),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.lock_clock,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SecondScreen3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}




class SecondScreen3 extends StatefulWidget {
  
  @override
  State<SecondScreen3> createState() => _SecondScreen3();
  
}

class _SecondScreen3 extends State<SecondScreen3> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 30),
        ),
        title: Text(
          'Channel',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body:
      Padding(padding: EdgeInsets.all(15),
      child: SingleChildScrollView(child:  Column(children: [
        Center(child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: 
        Image.network('https://yt3.googleusercontent.com/VQHYXisIqc_xhK-SnXj6nSw8pIuA_7wPuBBl2MO3C_KwqhREJ8LDXn0LsXsk42hIxUWOhgP01gc=s900-c-k-c0x00ffffff-no-rj',
        height: 100,
        width: 100,
        ),),),
        SizedBox(height: 20),
              Text(
                'BANTAN-BTS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text('Your Playlist'),
     SizedBox(height: 20,),
      Row(children: [
        ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 87, 31, 165),
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10)
        ),
         child:Text('Play All',
         style: TextStyle(
          color: Colors.white,
         ),
         )),
         Padding(padding: EdgeInsets.only(left: 6),
         child:   ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
      shadowColor:Color.fromARGB(255, 87, 31, 165) ,
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10)
        ),
         child:Text('Substance'
         )))
      ],),
      SizedBox(height: 20),
      Row(children: [
        Text('15 Episodes',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
        ),
        Padding(padding: EdgeInsets.only(left: 240, top: 6),
        child: Text('Then',
        style: TextStyle(
          fontSize: 14
        ),
        ),
        )
      ],),
      SizedBox(height: 20,),
      ListView( shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  children: [
    SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://yt3.googleusercontent.com/VQHYXisIqc_xhK-SnXj6nSw8pIuA_7wPuBBl2MO3C_KwqhREJ8LDXn0LsXsk42hIxUWOhgP01gc=s900-c-k-c0x00ffffff-no-rj',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20, right: 25),
          child: Text('BTS',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, left: 10),
          child: Text('Paradise',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 150),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.play_arrow,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
    SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://yt3.googleusercontent.com/VQHYXisIqc_xhK-SnXj6nSw8pIuA_7wPuBBl2MO3C_KwqhREJ8LDXn0LsXsk42hIxUWOhgP01gc=s900-c-k-c0x00ffffff-no-rj',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20, left: 10),
          child: Text('BTS',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, left: 10),
          child: Text('Run',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 190),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.play_arrow,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
    SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://yt3.googleusercontent.com/VQHYXisIqc_xhK-SnXj6nSw8pIuA_7wPuBBl2MO3C_KwqhREJ8LDXn0LsXsk42hIxUWOhgP01gc=s900-c-k-c0x00ffffff-no-rj',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20,right: 60),
          child: Text('BTS',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, left: 10),
          child: Text('Burn It Down',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 118),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.play_arrow,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://yt3.googleusercontent.com/VQHYXisIqc_xhK-SnXj6nSw8pIuA_7wPuBBl2MO3C_KwqhREJ8LDXn0LsXsk42hIxUWOhgP01gc=s900-c-k-c0x00ffffff-no-rj',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20,right: 40),
          child: Text('BTS',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5,left: 10),
          child: Text('In The End',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 138),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.play_arrow,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
    SizedBox(height: 10),
     SizedBox(height: 100,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child: Row(
        children: [ClipRRect(
          borderRadius: BorderRadius.circular(5),
         child:  Image.network('https://yt3.googleusercontent.com/VQHYXisIqc_xhK-SnXj6nSw8pIuA_7wPuBBl2MO3C_KwqhREJ8LDXn0LsXsk42hIxUWOhgP01gc=s900-c-k-c0x00ffffff-no-rj',
         height: 80,
         width: 80,
         )),
         Column(children: [
          Padding(padding: EdgeInsets.only(top: 20,),
          child: Text('BTS',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18
          ),
          ),
          ),
          Padding(padding: EdgeInsets.only(top:5, left: 10),
          child: Text('Today',
          style: TextStyle(
            fontSize: 18
          ),
          ),
          )
         ],),
          Padding(padding: EdgeInsets.only(left: 175),
             child: IconButton(onPressed:(){},
              icon: Icon(Icons.play_arrow,
              color:Color.fromARGB(255, 87, 31, 165),
              size: 50,
              )),
             )
        ],
      ),
    ),
    ),
  ],
  )
      ],),)
      ),
       bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 249, 247, 247),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color:Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.lock_clock,
                color: Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SecondScreen4()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
  }



  class SecondScreen4 extends StatefulWidget {
  
  @override
  State<SecondScreen4> createState() => _SecondScreen4();
  
}

class _SecondScreen4 extends State<SecondScreen4> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 30),
        ),
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child:ClipRRect(child: Image.network('https://miro.medium.com/v2/resize:fit:554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg'),)
          ),
        ],
      ),
      body:
      Padding(padding: EdgeInsets.all(15),
      child:SingleChildScrollView(child:  Column(children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: NetworkImage('https://avatars.mds.yandex.net/i?id=70e582028be2d152146efb1545d777b639dfd93e-10108140-images-thumbs&n=13'),
            fit: BoxFit.cover
            )
          ),
          child: Column(children: [
            Padding(padding: EdgeInsets.only(top: 120),
            child:  Text('Update Premium',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            )),
            Text('Account',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
          ],),
        ),
        SizedBox(height: 20,),
        ListView( shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  children: [
    SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.account_box,
       color: Color.fromARGB(255, 87, 31, 165),
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('Account Settings',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left: 160),
       child: Icon(Icons.arrow_left_rounded,
       color: Color.fromARGB(255, 87, 31, 165),
       size: 30,
       ),
       )
      ],)
    ),
    ),
     
SizedBox(height: 15,),
SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.star_border,
       color:Color.fromARGB(255, 87, 31, 165) ,
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('Favorites',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left: 225),
       child: Icon(Icons.arrow_left_rounded,
       size: 30,
       ),
       )
      ],)
    ),
    ),
    SizedBox(height: 15,),
SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.notifications,
       color:Color.fromARGB(255, 87, 31, 165) ,
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('Notifications',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left: 195),
       child: Icon(Icons.arrow_left_rounded,
       size: 30,
       ),
       )
      ],)
    ),
    ),
SizedBox(height: 15,),
SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.lock_clock,
       color:Color.fromARGB(255, 87, 31, 165) ,
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('Time',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left: 260),
       child: Icon(Icons.arrow_left_rounded,
       size: 30,
       ),
       )
      ],)
    ),
    ),
SizedBox(height: 15,),
SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.voicemail,
       color:Color.fromARGB(255, 87, 31, 165) ,
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('Sound Settings',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left: 175),
       child: Icon(Icons.arrow_left_rounded,
       size: 30,
       ),
       )
      ],)
    ),
    ),
SizedBox(height: 15,),
SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.account_circle_rounded,
       color:Color.fromARGB(255, 87, 31, 165) ,
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('Share',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left: 250),
       child: Icon(Icons.arrow_left_rounded,
       size: 30,
       ),
       )
      ],)
    ),
    ),
SizedBox(height: 15,),
SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.call,
       color:Color.fromARGB(255, 87, 31, 165) ,
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('Call-center',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left:210),
       child: Icon(Icons.arrow_left_rounded,
       size: 30,
       ),
       )
      ],)
    ),
    ),
SizedBox(height: 15,),
SizedBox(height: 60,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 230, 232, 233)
      ),
      child:Row(children: [
       Padding(padding: EdgeInsets.only(left: 15),
       child:  Icon(Icons.settings,
       color:Color.fromARGB(255, 87, 31, 165) ,
       )),
       Padding(padding: EdgeInsets.only(left:10),
       child: Text('All',
       style: TextStyle(
        fontSize: 18
       ),
       ),
       ),
       Padding(padding: EdgeInsets.only(left: 280),
       child: Icon(Icons.arrow_left_rounded,
       size: 30,
       ),
       )
      ],)
    ),
    ),

       ])
        ])
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 249, 247, 247),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color:Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.lock_clock,
                color: Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SecondScreen4()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Color.fromARGB(255, 87, 31, 165),
                size: 30,
              ),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}