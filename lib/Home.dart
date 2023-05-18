import 'package:flutter/material.dart';
import 'package:form/audio_screen.dart';

import 'loginScreen.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  child: Text('Form Page'),
              ),
              SizedBox(height: 10,),

              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AudioScreen()));
                },
                child: Text('Audio Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
