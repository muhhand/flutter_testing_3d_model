// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 30.0, left: 0.0, right: 0.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 320,
                      height: 320,
                      child: Center(
                        child: ModelViewer(
                          src: 'assets/model2.glb',
                          autoPlay: true,
                          ar: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Container(
                  child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Text(
                                'Astronaut Toy',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(16),
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Size',
                                          ),
                                          Text('S'),
                                        ],
                                      )),
                                  Container(
                                      padding: EdgeInsets.all(16),
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Color',
                                          ),
                                          Container(
                                            width: 30,
                                            height: 20,
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Details',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Every Astronaut needs a crew. Blast off with a Storklings spaceman toy on a super outer space adventure. Your astronaut soft toy is always ready for a fun space mission, dressed in a stellar spacesuit and helmet. Whether your adventures are inside a spaceship, at the controls of a space rocket, maintaining a space shuttle in outer space or even on an alien plush planet, a Storklings astronaut plush space toy is the perfect astronaut teddy bear crew mate. The astronauts go on missions with crews of all ages, from babies and toddler boys and girls, as well as children and adults of all ages. Build your crew of astronaut stuffed animals, collect all the astronaut cuddly toys, all dressed in their own unique spacesuit - the universe awaits.',
                                style: TextStyle(
                                  fontSize: 14,
                                  height: 2,
                                ),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 15, top: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '250' + ' LE',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: MaterialButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(12),
                                  color: Colors.orange,
                                  textColor: Colors.white,
                                  child: Text('ADD'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
