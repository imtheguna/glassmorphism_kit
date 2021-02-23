import 'package:flutter/material.dart';
import 'package:glassmorphism_kit/glassmorphism_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetDemo(),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/4.jpg"), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GlassContainer(
                    alignment: Alignment.center,
                    child: Text(
                      'Container',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.white,
                    colorOpacity: 0.1,
                    blurStrengthX: 10,
                    blurStrengthY: 10,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                    width: 290,
                    height: 180,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GlassCircle(
                    child: Center(
                      child: Text(
                        'Circle',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GlassCapsule(
                    width: 300,
                    child: Center(
                      child: Text(
                        'Capsule',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GlassBotton(
                    alignment: Alignment.center,
                    height: 80,
                    child: Text(
                      'Tap Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    width: 200,
                    onTap: () {},
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return SafeArea(
      child: Scaffold(
          key: _drawerKey,
          drawer: GlassDrawer(
            color: Colors.white,
            colorOpacity: 0.1,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'GlassDrawer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/1.jpg"), fit: BoxFit.cover)),
            child: Stack(
              children: [
                GlassBar(
                  actions: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  colorOpacity: 0.2,
                  color: Colors.white,
                  leading: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _drawerKey.currentState.openDrawer();
                    },
                  ),
                  height: 55,
                  blurStrengthY: 10,
                  blurStrengthX: 10,
                ),
              ],
            ),
          )),
    );
  }
}

class DemoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 10,
                child: GlassCircle(
                  color: Colors.amber,
                  colorOpacity: 1,
                  radius: 100,
                ),
              ),
              Positioned(
                top: 250,
                right: 5,
                child: GlassCircle(
                  color: Colors.blue[900],
                  colorOpacity: 1,
                  radius: 90,
                ),
              ),
              Positioned(
                top: 110,
                left: 30,
                child: GlassContainer(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 55,
                        left: 20,
                        child: Text(
                          '2525 1212 1111 0000',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 20,
                        child: Text(
                          '12/24',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        right: 20,
                        child: Text(
                          'VISA',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.6),
                  ),
                  height: 180,
                  width: 300,
                  color: Colors.white,
                  colorOpacity: 0.2,
                  borderRadius: BorderRadius.circular(15),
                ),
              )
            ],
          ),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/1.jpg"), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
