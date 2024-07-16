import 'package:flutter/material.dart';
import 'package:flutter_application_7/api_pass.dart';

class Card_first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 65, 164, 230),
                    Color.fromARGB(255, 186, 199, 34),
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0)),
            width: 400,
            height: 150,
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 10, top: 10),
                      child: Text(
                        'Bajaj Pay',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 22, 22),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, top: 10),
                      child: Text(
                        ' 8827530290@abfspay',
                        style: TextStyle(
                          color: Color.fromARGB(255, 28, 26, 26),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigate to the new page when the container is tapped.
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const api_pass()),
                              );
                            },
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 0, 191)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  'Click to View',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.wallet_outlined,
                            color: Color.fromARGB(255, 17, 15, 15),
                            size: 25,
                          ),
                          Text(
                            'Wallet',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 21, 19, 19),
                            size: 25,
                          ),
                          Text(
                            'Add',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.laptop,
                            color: Color.fromARGB(255, 12, 10, 10),
                            size: 25,
                          ),
                          Text(
                            'Passbook',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 65, 164, 230),
                    Colors.limeAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0)),
            width: 350,
            height: 150,
            child: const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 10, top: 10),
                      child: Text(
                        'EMI Network Card',
                        style: TextStyle(
                          color: Color.fromARGB(255, 18, 15, 15),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.wallet,
                            color: Color.fromARGB(255, 14, 12, 12),
                            size: 25,
                          ),
                          Text(
                            'EMI',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.no_transfer,
                            color: Color.fromARGB(255, 23, 19, 19),
                            size: 25,
                          ),
                          Text(
                            'Transactions',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.pattern_rounded,
                            color: Color.fromARGB(255, 19, 16, 16),
                            size: 25,
                          ),
                          Text(
                            'Patners',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.local_offer_outlined,
                            color: Color.fromARGB(255, 11, 10, 10),
                            size: 25,
                          ),
                          Text(
                            'offers',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 65, 164, 230),
                    Colors.limeAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0)),
            width: 350,
            height: 150,
            child: const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 10, top: 10),
                      child: Text(
                        'Co-Brand Credit Card',
                        style: TextStyle(
                          color: Color.fromARGB(255, 17, 14, 14),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.check_box_outline_blank,
                            color: Color.fromARGB(255, 14, 13, 13),
                            size: 25,
                          ),
                          Text(
                            'Check \nOffer',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.currency_rupee_sharp,
                            color: Color.fromARGB(255, 21, 19, 19),
                            size: 25,
                          ),
                          Text(
                            'Joining \nBonus',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_box,
                            color: Color.fromARGB(255, 13, 12, 12),
                            size: 25,
                          ),
                          Text(
                            'Offers',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.card_membership,
                            color: Color.fromARGB(255, 12, 9, 9),
                            size: 25,
                          ),
                          Text(
                            'Cards \nBenefits',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 120, 11),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
