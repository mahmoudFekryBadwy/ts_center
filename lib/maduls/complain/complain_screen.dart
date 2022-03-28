
import 'package:flutter/material.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text('Complains',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                color: Colors.grey,
                width: double.infinity,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'write the complain ...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: InkWell(
                child:Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.brown,
                  ),
                  height: 50,
                  width: 100,
                  child: const Center(child: Text('Send',
                    style: TextStyle(color: Colors.white),)),
                ),
                onTap: (){
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
