import 'package:flutter/material.dart';

import 'itens.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClip(),
              child: Container(
                height: 200.0,
                color: Colors.brown,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Escolha seu Café',
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      height: 40.0,
                      margin: EdgeInsets.symmetric(
                          horizontal: 34.0, vertical: 30.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Pesquise pelos Melhores",
                            hintStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10.0),
                            suffixIcon: Icon(
                              Icons.search,
                              size: 18.0,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Nossos Especiais',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22.0),
                  ),
                  Text(
                    'Veja Todos',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14.0),
                  )
                ],
              ),
            ),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  getItens(
                      'https://images.pexels.com/photos/434213/pexels-photo-434213.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  getItens(
                      'http://images.unsplash.com/photo-1525629545813-e4e7ba89e506?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9'),
                  getItens(
                      'https://i.pinimg.com/originals/ec/07/ac/ec07ac0ff8995e5ce00857b08568fc71.png'),
                  getItens(
                      'https://images.unsplash.com/photo-1543256840-0709ad5d3726?ixlib=rb-1.2.1&w=1000&q=80'),
                  getItens(
                      'https://images.pexels.com/photos/2074122/pexels-photo-2074122.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  getItens(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN8ypCUBewOcOPOGcu_6KOuJmEerwhp9zlGaWMS8bnGQrJ_AoQ'),
                  getItens(
                      'http://media.rtp.pt/agoranos/wp-content/uploads/sites/82/2015/04/background-15994_640-640x422.jpg'),
                  getItens(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSg8btkhM7qnlRdNKv7X8yb6FD0V5GoEUqr8GGmFSfCgH_5-A9'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Mais Populares',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black),
                  ),
                  Text(
                    'Veja Todos',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            getItensSmall(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ23IEKpFKkOHz4EIXcKJ5Ppz0qo67qTWPx49YFK4DqGFq6Npe3',
                '5',
                '10',
                'café Caputino'),
            getItensSmall(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScDyBwniB9SpwMVKkz_4knZPGlh1HFI00QsPX5xZ_3C15wEHEy',
                '3',
                '2.50',
                'café Snaps'),
            getItensSmall(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj8buRLx_-ioc6DLholrT25B6UMmoa_G3uOQlpG-OUjMI3GU4s',
                '8',
                '25',
                'café Francês'),
          ],
        ),
      ),
    );
  }
}


class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 50.0);
    path.quadraticBezierTo(
        size.width - 70, size.height, size.width / 2, size.height - 20);
    path.quadraticBezierTo(size.width / 3.0, size.height - 32, 0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
