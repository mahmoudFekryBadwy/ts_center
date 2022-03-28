import 'package:flutter/material.dart';
import 'package:ts/shared/componance/componance.dart';
class SubjectsScreen extends StatelessWidget {

  const SubjectsScreen({Key key}) : super(key: key);

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              child: const Center(child: Text('مدنى',
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
                              child: const Center(child: Text('دولى',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              child: const Center(child: Text('بحرى',
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
                  const SizedBox(height: 20,),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              child: const Center(child: Text('اقتصاد',
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
                              child: const Center(child: Text('لغة',
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
