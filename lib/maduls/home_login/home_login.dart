
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ts/maduls/home/home_screen.dart';
import 'package:ts/maduls/login/login_screen.dart';
import 'package:ts/shared/componance/componance.dart';

class HomeLogin extends StatelessWidget {
  const HomeLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Intro_page-0001.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          ),
          const Text('Welcome to the Center Ts'),
          Center(
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsetsDirectional.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      navigateTo(context, const HomeScreen());
                    },
                    child: Container(
                      child: const CircleAvatar(
                        child: Text('FREE'),
                        radius: 50,
                        backgroundColor: Colors.brown,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      navigateTo(context, LoginScreen());
                    },
                    child: Container(
                      child: const CircleAvatar(
                        child: Text('PREMIUM'),
                        radius: 50,
                        backgroundColor: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
