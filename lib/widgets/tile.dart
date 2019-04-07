import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sexy_flutter/pages/pager.dart';


class Tile extends StatelessWidget {
  const Tile(this.color, this.name, this.image);

  final Color color;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SolutionPager())
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 * 0.9,
        height: MediaQuery.of(context).size.width / 2 * 0.9,
        margin: EdgeInsets.all(2.0),
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              image,
              color: Colors.white,
              width: 80.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                )
              ),
            )
          ],
        ),
      ),
    );
  }

}