import 'package:flutter/material.dart';
import 'package:ts/maduls/records/school_years/subjects/subjects_screen.dart';
import 'package:ts/shared/componance/componance.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Image.asset('assets/images/TS Logo_page-0001.jpg',
              height: double.infinity,
              width: double.infinity,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.brown,
                              ),
                              height: 100,
                              width: 100,
                              child: const Center(child: Text('الفرقة الثانية',
                                style: TextStyle(color: Colors.white),)),
                            ),
                            onTap: (){
                              navigateTo(context, const SubjectsScreen());
                            },
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: InkWell(
                            child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.brown,
                              ),
                              height: 100,
                              width: 100,
                              child: const Center(child: Text('الفرقة الاولى',
                                style: TextStyle(color: Colors.white),)),
                            ),
                            onTap: (){
                              navigateTo(context, const SubjectsScreen());

                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.brown,
                              ),
                              height: 100,
                              width: 100,
                              child: const Center(child: Text('الفرقة الرابعة',
                                style: TextStyle(color: Colors.white),)),
                            ),
                            onTap: (){
                              navigateTo(context, const SubjectsScreen());

                            },
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: InkWell(
                            child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.brown,
                              ),
                              height: 100,
                              width: 100,
                              child: const Center(child: Text('الفرقة الثالثة',
                                style: TextStyle(color: Colors.white),)),
                            ),
                            onTap: (){
                              navigateTo(context, const SubjectsScreen());

                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
