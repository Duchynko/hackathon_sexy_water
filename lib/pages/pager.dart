import 'package:sexy_flutter/model/solution.dart';
import 'package:sexy_flutter/model/solutions.dart';
import 'package:sexy_flutter/widgets/item_card.dart';
// import 'package:sexy_flutter/widgets/rectangle_indicator.dart';
import 'package:flutter/material.dart';

class SolutionPager extends StatefulWidget {
  @override
  _SolutionPager createState() => _SolutionPager();
    
  }

const double _kViewportFraction = 0.75;
  
class _SolutionPager extends State<SolutionPager> with TickerProviderStateMixin{

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
        (((selectedIndex.value).abs() * 0.2).clamp(0.0, 1.0))
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
    return null;
  }
}