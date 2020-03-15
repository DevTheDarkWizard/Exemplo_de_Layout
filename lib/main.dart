import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controllerPage1 = new PageController();
  final controllerPage2 = new PageController();

  final greenColor = Color.fromARGB(255, 101, 188, 191);
  final redColor = Color.fromARGB(255, 246, 121, 127);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: redColor,
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: redColor,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.brightness_5),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            "Accounts",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "DAILY"),
              Tab(text: "WEEKLY"),
              Tab(text: "MONTHLY"),
              Tab(text: "YEARLY"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.0,
                      left: 10.0,
                      bottom: 10,
                      right: 10.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 120,
                          child: PageView(
                            controller: controllerPage1,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("BALANCE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("-\$171 559.80",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 42.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("+4.28%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0)),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("OI"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0, top: 25.0),
                          child: SmoothPageIndicator(
                            controller: controllerPage1,
                            count: 2,
                            effect: JumpingDotEffect(
                              elevation: 1,
                              spacing: 7.0,
                              dotHeight: 7.0,
                              dotWidth: 7.0,
                              dotColor: Color.fromARGB(100, 255, 255, 255),
                              activeDotColor: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            children: <Widget>[
                              makeBox("Cash", "\$23 092.20", onLongPress: () {
                                Navigator.push(
                                  context,
                                  SlideRightRoute(page: SegundaTela()),
                                );
                              }),
                              makeBox("Credit card", "-\$532", color: redColor),
                              makeBox("Wife's credit card", "\$2 139"),
                              makeBox("Bank deposit", "\$200 000"),
                              makeBox("Car loan", "-\$67 231", color: redColor),
                              makeBox("Home loan", "-\$329 027",
                                  color: redColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.0,
                      left: 10.0,
                      bottom: 10,
                      right: 10.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 120,
                          child: PageView(
                            controller: controllerPage2,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("BALANCE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("-\$171 559.80",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 42.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("+4.28%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0)),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("OI"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0, top: 25.0),
                          child: SmoothPageIndicator(
                            controller: controllerPage2,
                            count: 2,
                            effect: JumpingDotEffect(
                              elevation: 1,
                              spacing: 7.0,
                              dotHeight: 7.0,
                              dotWidth: 7.0,
                              dotColor: Color.fromARGB(100, 255, 255, 255),
                              activeDotColor: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            children: <Widget>[
                              makeBox("Cash", "\$23 092.20", onLongPress: () {
                                debugPrint("SHOW");
                              }),
                              makeBox("Credit card", "-\$532",
                                  color: Color.fromARGB(255, 238, 146, 157)),
                              makeBox("Wife's credit card", "\$2 139"),
                              makeBox("Bank deposit", "\$200 000"),
                              makeBox("Car loan", "-\$67 231", color: redColor),
                              makeBox("Home loan", "-\$329 027",
                                  color: redColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  final controllerPage1 = new PageController();
  final controllerPage2 = new PageController();

  final greenColor = Color.fromARGB(255, 101, 188, 191);
  final redColor = Color.fromARGB(255, 246, 121, 127);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: greenColor,
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: greenColor,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  "Accounts",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Expanded(
                flex: 15,
                child: Center(
                  child: Text(
                    "Cash",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "DAILY"),
              Tab(text: "WEEKLY"),
              Tab(text: "MONTHLY"),
              Tab(text: "YEARLY"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.0,
                      left: 5.0,
                      bottom: 10,
                      right: 5.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 120,
                          child: PageView(
                            controller: controllerPage1,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("BALANCE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("\$23 092.20",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 42.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("+28.03%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0)),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("OI"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0, top: 25.0),
                          child: SmoothPageIndicator(
                            controller: controllerPage1,
                            count: 2,
                            effect: JumpingDotEffect(
                              elevation: 1,
                              spacing: 7.0,
                              dotHeight: 7.0,
                              dotWidth: 7.0,
                              dotColor: Color.fromARGB(100, 255, 255, 255),
                              activeDotColor: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                            /*#84c9cc*/
                            padding: EdgeInsets.only(bottom: 10.0, top: 25.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Material(
                                elevation: 0,
                                color: Color.fromARGB(255, 132, 201, 204),
                                child: InkWell(
                                  onTap: () {
                                    debugPrint("TAP");
                                  },
                                  onLongPress: () {
                                    debugPrint("LONG PRESS");
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 125.0,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Add New",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Container(
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    child: Material(
                                      color: Colors.white,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 10.0,
                                            bottom: 10.0,
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              makeItem(Icons.home,
                                                  "Rental revenue", "\$1500"),
                                              Divider(
                                                height: 20,
                                              ),
                                              makeItem(Icons.directions_car,
                                                  "Car", "-\$193.02",
                                                  color: redColor),
                                              Divider(height: 20),
                                              makeItem(Icons.credit_card,
                                                  "Salary", "\$7500"),
                                              Divider(height: 20),
                                              makeItem(Icons.room_service,
                                                  "Food & Restaurants", "-\$37",
                                                  color: redColor),
                                              Divider(height: 20),
                                              makeItem(
                                                  Icons.settings_input_hdmi,
                                                  "Coffee",
                                                  "-\$2",
                                                  color: redColor),
                                              Divider(height: 20),
                                              makeItem(Icons.room_service,
                                                  "Food & Restaurants", "-\$5",
                                                  color: redColor),
                                              Divider(height: 20),
                                              makeItem(Icons.phone_iphone,
                                                  "Mobile Account", "-\$19.99",
                                                  color: redColor),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.0,
                      left: 10.0,
                      bottom: 10,
                      right: 10.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 120,
                          child: PageView(
                            controller: controllerPage2,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("BALANCE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("-\$171 559.80",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 42.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 2,
                                    ),
                                    child: Text("+4.28%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0)),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("OI"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0, top: 25.0),
                          child: SmoothPageIndicator(
                            controller: controllerPage2,
                            count: 2,
                            effect: JumpingDotEffect(
                              elevation: 1,
                              spacing: 7.0,
                              dotHeight: 7.0,
                              dotWidth: 7.0,
                              dotColor: Color.fromARGB(100, 255, 255, 255),
                              activeDotColor: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            children: <Widget>[
                              makeBox("Cash", "\$23 092.20", onLongPress: () {
                                debugPrint("SHOW");
                              }),
                              makeBox("Credit card", "-\$532",
                                  color: Color.fromARGB(255, 238, 146, 157)),
                              makeBox("Wife's credit card", "\$2 139"),
                              makeBox("Bank deposit", "\$200 000"),
                              makeBox("Car loan", "-\$67 231", color: redColor),
                              makeBox("Home loan", "-\$329 027",
                                  color: redColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionDuration: Duration(milliseconds: 150),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: new Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

Widget makeItem(IconData icon, String label, String value,
    {Color color, Color iconColor}) {
  return Padding(
    padding: EdgeInsets.only(
      left: 20.0,
      right: 12.0,
    ),
    child: Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          child: Material(
            color: Color.fromARGB(10, 0, 0, 0),
            child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(icon,
                    color: iconColor ?? Color.fromARGB(255, 105, 189, 191),
                    size: 30.0)),
          ),
        ),
        /* ,
                                            ),*/
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              label ?? "",
              style: TextStyle(
                  fontSize: 18.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              value ?? "",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: color ?? Color.fromARGB(255, 105, 189, 191)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget makeBox(String label, String value,
    {Color color, Function onLongPress, Function onTap}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.0),
    child: Container(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: onTap ??
                () {
                  debugPrint("TAP");
                },
            onLongPress: onLongPress ??
                () {
                  debugPrint("LONG PRESS");
                },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    label,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Text(
                      value,
                      style: TextStyle(
                          color: color ?? Color.fromARGB(255, 105, 189, 191),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
