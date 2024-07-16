import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Card_second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
               color: Colors.white,
                borderRadius: BorderRadius.circular(10.0)),
            width: 380,
            height: 150,
            child: const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 10, top: 10),
                      child: Text(
                        'Bill & Recharge',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 22, 22),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130, top: 10),
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Color.fromARGB(255, 28, 26, 26),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mobile_screen_share_outlined,
                              color: Color.fromARGB(255, 124, 227, 245),
                              size: 25,
                            ),
                            Text(
                              'Mobile',
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 120, 11),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Recharge',
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 120, 11),
                                fontSize: 12,
                              ),
                            ),
                                      
                          ],
                        ),
                      ),
                       Spacer(flex: 1,),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.stay_current_landscape,
                            color: Color.fromARGB(255, 223, 236, 42),
                            size: 25,
                          ),
                          Text(
                            'Electricity',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                       Spacer(flex: 1,),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.payments_sharp,
                              color: Color.fromARGB(255, 57, 103, 173),
                              size: 25,
                            ),
                            Text(
                              'Loan',
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 120, 11),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Repayment',
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 120, 11),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                       Spacer(flex: 1,),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Icon(
                              Icons.credit_card,
                              color: Color.fromARGB(255, 68, 180, 45),
                              size: 25,
                            ),
                          ),
                          Text(
                            'Credit Card',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Bill',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Spacer(flex: 1,),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_gas_station,
                            color: Color.fromARGB(255, 158, 32, 32),
                            size: 25,
                          ),
                          Text(
                            'LPG gas',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      
                
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        ]
      ),
    );
  }
        }