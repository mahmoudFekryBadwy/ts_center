import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0.0,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children:  [
                 const Text('',
                  style: TextStyle(
                      fontSize: 30
                  ),),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            color: Colors.brown
                        ),
                        child: const Center(child: Text('23',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: Colors.brown,
                        ),
                        child: const Center(child: Text('22',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            color: Colors.brown
                        ),
                        child: const Center(child: Text('27',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          color: Colors.brown,
                        ),
                        child: const Center(child: Text('29',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        );
      }
  }
