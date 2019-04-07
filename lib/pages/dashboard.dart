import 'package:flutter/material.dart';
import 'package:sexy_flutter/widgets/tile.dart';

class Dashboard extends StatefulWidget {

  var filter = "day";
  var timeFrame = "DAILY";
  var deepLevel = 0;
  var graph = "assets/images/daily_avg.jpg";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  _goDeeper() {
    if (widget.deepLevel == 0) {
      widget.deepLevel = 1;
      widget.graph = "assets/images/daily_overview.jpg";
    } else if (widget.deepLevel == 1) {
      widget.deepLevel = 2;
      widget.graph = "assets/images/daily_example.jpg";
    } else {
      widget.deepLevel = 0;
      widget.graph = "assets/images/daily_avg.jpg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF127BBD),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("assets/images/lulu.png"),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(bottom: 20.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0, bottom: 20.0),
                    child: Text(
                      "Hello Aneena!",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  )
                ),
                Image.asset(
                  "assets/images/lulu.gif",
                  width: 260.0
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF127BBD),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14.0, bottom: 14.0, right: 8.0, left: 8.0),
                    child: Text(
                      "My name is lulu and I'm here to help you become more sustainable by using water efficiently",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0, right: 10.0, left: 10.0),
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade200,
            child: Column(
              children: <Widget>[
                Text(widget.timeFrame + " WATER CONSUMPTION",
                  style: TextStyle(
                    color: Color(0xFF127BBD),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10.0, right: 10.0, left: 10.0),
                  child: GestureDetector(
                    onTap: () => {
                      _goDeeper();
                    },
                    child: Image.asset(
                      widget.graph,
                      width: MediaQuery.of(context).size.width - 150,
                      ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          widget.timeFrame = "DAILY";
                          widget.filter = "day";
                          widget.graph = "assets/images/daily_avg.jpg";
                        });
                      },
                      color: (widget.filter == "day") ? Color(0xFF127BBD) : Colors.white,
                      child: Text("Day",
                        style: TextStyle(
                          color: (widget.filter == "day") ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          widget.timeFrame = "WEEKLY";
                          widget.filter = "week";
                          widget.graph = "assets/images/weekly_avg.jpg";
                        });
                      },
                      color: (widget.filter == "week") ? Color(0xFF127BBD) : Colors.white,
                      child: Text("Week",
                        style: TextStyle(
                            color: (widget.filter == "week") ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          widget.timeFrame = "MONTHLY";
                          widget.filter = "month";
                          widget.graph = "assets/images/monthly_avg.jpg";
                        });
                      },
                      color: (widget.filter == "month") ? Color(0xFF127BBD) : Colors.white,
                      child: Text("Month",
                        style: TextStyle(
                            color: (widget.filter == "month") ? Colors.white : Colors.black,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, bottom: 30.0, right: 10.0, left: 10.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text("HOW DO YOU USE WATER?",
                    style: TextStyle(
                      color: Color(0xFF127BBD),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Tile(Colors.green, "SHOWER", "assets/images/categories/shower.svg"),
                    Tile(Colors.red, "TOILET", "assets/images/categories/toilet.svg")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Tile(Colors.green, "WASHING MACHINE", "assets/images/categories/washing-machine.svg"),
                    Tile(Colors.yellow.shade700, "DISHWASHER", "assets/images/categories/dishwasher.svg")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Tile(Colors.red, "FAUCET", "assets/images/categories/faucet.svg"),
                    Tile(Colors.yellow.shade700, "BATH", "assets/images/categories/bathtub.svg")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Tile(Colors.green, "LEAK", "assets/images/categories/leak.svg"),
                    Tile(Colors.red, "OTHER", "assets/images/categories/other.svg")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}