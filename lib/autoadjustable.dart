import 'package:flutter/material.dart';
import 'dart:async';

class AutoScrollCards extends StatefulWidget {
  @override
  _AutoScrollCardsState createState() => _AutoScrollCardsState();
}

class _AutoScrollCardsState extends State<AutoScrollCards> {
  PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 200, // Adjust the height as needed
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            // Add your cards here
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 4,
              margin: const EdgeInsets.all(5),
              child: Container(
                height: 130,
                width: 320,
                child: const Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/diwali.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Center(
                      child: Text(
                        'Light up a smile \nHAPPY DIWALI',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 4,
              margin: const EdgeInsets.all(5),
              child: const Stack(
                children: [
                  Image(
                    image: AssetImage('assets/offer.webp'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                       textAlign: TextAlign.center,
                      // 'MID MONTH SALE\nUP TO 70% off',
                      'MID MONTH SALE',
                      style:
                          TextStyle(fontStyle: FontStyle.normal, fontSize: 14),
                      selectionColor: Color.fromARGB(255, 219, 66, 117),
                     
                    ),
                  )
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 4,
              margin: const EdgeInsets.all(5),
              child: const Stack(
                children: [
                  Image(
                    image: AssetImage('assets/sea.jpg'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Text(
                    'LONG WEEKENDS travel plans?   \n28-29-30Mar  \n2-3-4April',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color.fromARGB(255, 7, 42, 20)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
