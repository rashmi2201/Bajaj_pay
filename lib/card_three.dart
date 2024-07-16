import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Card_three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            margin: const EdgeInsets.all(5),
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('assets/diwali.jpg'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  // Center(
                  //   child: Text('Light up a smile \nHAPPY DIWALI',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 40),),
                  // )
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            margin: const EdgeInsets.all(5),
            child: Container(
              height: 130,
              width: 320,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage('assets/offer.webp'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 190,top: 18),
                      child: Text('MID MONTH SALE\nUP TO 70% off',style: TextStyle(fontStyle: FontStyle.normal,fontSize: 30),selectionColor: Color.fromARGB(255, 219, 66, 117),),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            margin: const EdgeInsets.all(5),
            child: Container(
              height: 130,
              width: 320,
              child: Stack(
                children: [
                  const Image(
                    image: AssetImage('assets/sea.jpg'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10,left: 20),
                      child: Text('LONG WEEKENDS travel plans?   \n28-29-30Mar  \n2-3-4April',style: TextStyle(fontStyle: FontStyle.normal,fontSize: 15,color: Color.fromARGB(255, 235, 188, 59)),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
