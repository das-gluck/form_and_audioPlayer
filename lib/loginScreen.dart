import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();




@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form '),
        backgroundColor: Colors.purple[200],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
        child: Form(
          key: _formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.black54
                      )
                    ),
                    labelText: 'name',
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: (Colors.purple[200])!,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black54
                        )
                    ),
                  ),
                  validator: (String? msg){
                    if(msg!.isEmpty){
                      return "Please Enter Text";
                    }else if(msg.length<3){
                      return " at least 6 character";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54
                        )
                    ),
                    labelText: 'email',
                    prefixIcon: Icon(Icons.email_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: (Colors.purple[200])!,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black54
                        )
                    ),
                  ),
                  validator: (value)=>  !EmailValidator.validate(value!)? "Check your email" : null,
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54
                        )
                    ),
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Icons.dialer_sip),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: (Colors.purple[200])!,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black54
                        )
                    ),
                  ),
                  validator: (String? msg){
                    if(msg!.isEmpty){
                      return "Please enter your mobile number";
                    }else if(msg.length!=10){
                      return " Please enter valid mobile number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54
                        )
                    ),
                    labelText: 'gender',
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: (Colors.purple[200])!,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black54
                        )
                    ),
                  ),
                  validator: (String? msg){
                    if(msg!.isEmpty){
                      return "Please Enter Text";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54
                        )
                    ),
                    labelText: 'country',
                    prefixIcon: Icon(Icons.info),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: (Colors.purple[200])!,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black54
                        )
                    ),
                  ),
                  validator: (String? msg){
                    if(msg!.isEmpty){
                      return "Please Enter Text";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54
                        )
                    ),
                    labelText: 'state',
                    prefixIcon: Icon(Icons.info),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: (Colors.purple[200])!,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black54
                        )
                    ),
                  ),
                  validator: (String? msg){
                    if(msg!.isEmpty){
                      return "Please Enter Text";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.black54
                        )
                    ),
                    labelText: 'city',
                    prefixIcon: Icon(Icons.info),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: (Colors.purple[200])!,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.black54
                        )
                    ),
                  ),
                  validator: (String? msg){
                    if(msg!.isEmpty){
                      return "Please Enter Text";
                    }
                    return null;
                  },
                ),
              ],
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _formKey.currentState?.validate();
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
