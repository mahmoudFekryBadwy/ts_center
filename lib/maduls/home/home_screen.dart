
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ts/maduls/about/about_screen.dart';
import 'package:ts/maduls/books/book_screen.dart';
import 'package:ts/maduls/complain/complain_screen.dart';
import 'package:ts/maduls/post/post_screen.dart';
import 'package:ts/maduls/quiz/quiz_screen.dart';
import 'package:ts/maduls/records/record_screen.dart';
import 'package:ts/maduls/videos/video_screen.dart';
import 'package:ts/shared/componance/componance.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TS Home',style: TextStyle(
          color: Colors.brown,
        ),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_alert,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:[
                const Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.all(8.0),
                  elevation: 8,
                  child: Image(
                    image: AssetImage('assets/images/cover.jpeg'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 180,
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            navigateTo(context, const RecordScreen());
                          },
                          child: Card(
                            elevation: 5.0,
                            child: Container(
                              height: 200,
                              width: 110,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/record.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ) ,
                              child: Text(''),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            navigateTo(context, const BookScreen());
                          },
                          child: Card(
                            elevation: 5.0,
                            clipBehavior:Clip.antiAliasWithSaveLayer ,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/book.jpeg',
                                  height: 190,
                                  width: 110,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            navigateTo(context, const VideoScreen());
                          },
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/video.jpeg',
                                  height: 190,
                                  width: 110,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            navigateTo(context, const AboutScreen());
                          },
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/contact.jpeg',
                                  height: 190,
                                  width: 110,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            navigateTo(context, const QuizScreen());
                          },
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/Complains.jpg',
                                  height: 190,
                                  width: 110,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            navigateTo(context, const ComplainScreen());
                          },
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/Complains.jpg',
                                  height: 190,
                                  width: 110,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>buildPostItem(context),
                  separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                  itemCount: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: (){
                      navigateTo(context, PostScreen());
                    },
                    child: const Text('Post'),
                    backgroundColor: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget buildPostItem(context) =>Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996'),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text('Mahmoud Fekry',
                          style: TextStyle(height: 1.2),),
                        SizedBox(width: 5,),
                        Icon(Icons.check_circle,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                    Text('January 21, 2021 at 11:00 pm',
                      style: Theme.of(context).textTheme.caption.copyWith(height: 1.5),),
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              IconButton(
                  onPressed: (){},
                  iconSize: 16,
                  icon: const Icon(Icons.more_horiz,)
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade300,
            ),
          ),
          const Text('سنتر ts  هو السنتر الأقوى على الاطلاق في مجال تقديم الخدمات التعليميه لطلاب كلية الحقوق لذلك سارع بالانضمام للحصول على خدمات السنتر التي تؤهلك للحصول على اعلى التقديرات '
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,top: 5),
            child: Container(
              width: double.infinity,
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 6),
                    child: Container(
                      height: 25,
                      child: MaterialButton(
                        minWidth: 1.0,
                        padding: EdgeInsets.zero,
                        onPressed: (){},
                        child:Text('#Ts_Center',
                            style:Theme.of(context).textTheme.caption.copyWith(color: Colors.blue)),
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Container(
            height: 120,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/TS Logo_page-0001.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        children:  [
                          const Icon(
                            Icons.volunteer_activism,
                            size: 15,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5,),
                          Text('1200',
                            style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                    ),
                    onTap: (){},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          const Icon(
                            Icons.chat,
                            size: 15,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5,),
                          Text('120 comments',
                            style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                    ),
                    onTap: (){},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade300,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage('https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996'),
                      ),
                      const SizedBox(width: 15,),
                      Text('write a comment ...',
                        style: Theme.of(context).textTheme.caption.copyWith(height: 1.5),),
                    ],
                  ),
                  onTap: (){},
                ),
              ),
              InkWell(
                child: Row(
                  children:  [
                    const Icon(
                      Icons.volunteer_activism,
                      size: 15,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5,),
                    Text('Like',
                      style: Theme.of(context).textTheme.caption,),
                  ],
                ),
                onTap: (){},
              ),
            ],
          ),
        ],
      ),
    ),
  );

}
