import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About the Center',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Image.asset('assets/images/TS Logo_page-0001.jpg'),
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/images/whatslogo.png',height: 40,width: 40,),
                              Text('whatsApp')
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              TextButton(
                                onPressed: (){whatsapp();},
                                child: const Text('01123747511',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                              TextButton(
                                onPressed: (){whatsapp1();},
                                child: const Text('01140280044',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                              TextButton(
                                onPressed: (){whatsapp2();},
                                child: const Text('01152820938',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/images/phonelogo.jpg',height: 50,width: 50,),
                              Text('phone')
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              TextButton(
                                onPressed: (){calling();},
                                child: const Text('01123747511',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                              TextButton(
                                onPressed: (){calling1();},
                                child: const Text('01140280044',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                              TextButton(
                                onPressed: (){calling2();},
                                child: const Text('01152820938',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/images/facebooklogo.png',height: 40,width: 40,),
                              Text('FaceBook')
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              TextButton(
                                onPressed: (){facebookCenter();},
                                child: const Text('Center Ts',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                              TextButton(
                                onPressed: (){facebookTaha();},
                                child: const Text('Dr:Taha',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                              TextButton(
                                onPressed: (){facebookAcademy();},
                                child: const Text('Faculty of Law',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/images/telegramlogo.jpg',height: 50,width: 50,),
                              Text('Telegram')
                            ],
                          ),
                          SizedBox(width: 50,),
                          Column(
                            children: [
                              TextButton(
                                onPressed: (){telegramGroup();},
                                child: const Text('Group',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                              TextButton(
                                onPressed: (){telegramCenter();},
                                child: const Text('Center Ts',style: TextStyle(color: Colors.brown,fontSize: 20),),
                              ),
                            ],
                          ),
                        ],
                      ),




                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  calling()async{
    const url = 'tel:+01123747511';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  calling1()async{
    const url = 'tel:+01140280044';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  calling2()async{
    const url = 'tel:+01152820938';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }

  whatsapp()async{
    const url = "whatsapp://send?phone=+0201123747511";
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  whatsapp1()async{
    const url = "whatsapp://send?phone=+0201140280044";
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  whatsapp2()async{
    const url = "whatsapp://send?phone=+0201152820938";
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }

  facebookCenter()async{
    const url ='https://www.facebook.com/groups/382982392687612/?ref=share';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  facebookTaha()async{
    const url ='https://www.facebook.com/tahagouda';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  facebookAcademy()async{
    const url ='https://www.facebook.com/groups/law4Helwan/?ref=share';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  telegramGroup()async{
    const url ='https://t.me/+TjIE5xuuwHmpfyPb';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  telegramCenter()async{
    const url ='https://t.me/+UUWFMnc_2-A_Gkad';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }

}
