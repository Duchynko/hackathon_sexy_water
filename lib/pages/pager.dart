import 'package:sexy_flutter/model/solution.dart';
import 'package:sexy_flutter/model/solutions.dart';
import 'package:sexy_flutter/widgets/item_card.dart';
// import 'package:sexy_flutter/widgets/rectangle_indicator.dart';
import 'package:flutter/material.dart';

class SolutionPager extends StatefulWidget {
  @override
  _SolutionPagerState createState() => _SolutionPagerState();
    
  }

const double _kViewportFraction = 0.75;
  
class _SolutionPagerState extends State<SolutionPager> with TickerProviderStateMixin{

  final PageController _backgroundPageController = PageController();
  final PageController _pageController = PageController(viewportFraction: _kViewportFraction);
  ValueNotifier<double> selectedIndex = ValueNotifier<double>(0.0);

  AnimationController controller;
  
  @override
    void initState() {
      super.initState();
      controller = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    }

  @override
    void dispose() {
      controller.dispose();
      _pageController.dispose();
      _backgroundPageController.dispose();
      super.dispose();
    }

  _contentWidget(Solution solution, int index, Alignment alignment, double resize) {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            alignment: alignment,
            width: 350.0 * resize,
            height: 600.0 * resize,
            child: Stack(
              children: <Widget>[
                ItemCard(
                  solution: solution,
                  cardColor: solution.background,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Iterable<Widget> _buildPages() {
    final List<Widget> pages = <Widget>[];
    for (int index = 0; index < 5; index++) {
      var alignment = Alignment.center.add(Alignment(
        (selectedIndex.value - index) * _kViewportFraction, 0.0
      ));
      var resizeFactor = (1 -
        (((selectedIndex.value - index).abs() * 0.2).clamp(0.0, 1.0))
      );
      pages.add(
        _contentWidget(
          Solutions.solutions[index],
          index,
          alignment,
          resizeFactor
        )
      );
    }
    return pages;
  }

  // TODO: Continue with build method 
  // https://github.com/huextrat/BurnOff/blob/master/lib/screens/pager.dart

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: Solutions.solutions[selectedIndex.value.toInt()].background
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              "DID YOU KNOW?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Dosis'
              ),),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 40.0),
            // child:,
          ),
        ),
        PageView.builder(
          itemCount: Solutions.solutions.length,
          itemBuilder: (BuildContext context, int itemCount) {
            return Container();
          },
          controller: _backgroundPageController,
        ),
        NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            if (notification.depth == 0 && notification is ScrollUpdateNotification) {
              selectedIndex.value = _pageController.page;
              if(_backgroundPageController.page != _pageController.page) {
                _backgroundPageController.position
                    .jumpTo(_pageController.position.pixels / _kViewportFraction);
              }
              setState(() {});
            }
            return false;
          },
          child: PageView(
            controller: _pageController,
            children: _buildPages(),
          ),
        )
      ],
    );
  }
}