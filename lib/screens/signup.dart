import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../main.dart';
import '../widgets/buton.dart';
import '../widgets/customfield.dart';
import '../widgets/undermessage.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? email;
  String? password;

  bool isladding = false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isladding,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: scolor),
          backgroundColor: Color(0xff66B343),
          title: Text(
            'Sign up',
            style: TextStyle(
              color: scolor,
              fontFamily: 'Cherly',
              fontSize: 25,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/organic.png'),
                ),
                Spacer(
                  flex: 1,
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomField(
                  onChanged: (data) {
                    email = data;
                  },
                  label: 'Email',
                ),
                SizedBox(height: 16.0),
                CustomField(
                  onChanged: (data) {
                    password = data;
                  },
                  label: 'Password',
                ),
                SizedBox(height: 32.0),
                
                   
                     Buton(
                        ontap: () async {
                          if (formkey.currentState!.validate()) {
                            isladding = true;
                            setState(() {
                              
                            });
                            try {
                              await signup(context);
                              undermessage(context, 'success');
                              Navigator.pop(context);
                            } on FirebaseAuthException catch (ex) {
                              if (ex.code == 'weak-password') {
                                undermessage(context, 'weak password');
                              } else if (ex.code == 'email-already-in-use') {
                                undermessage(context, 'email already exists');
                              }
                            } catch (ex) {
                              undermessage(context, 'there is an error');
                            }
                            isladding = false;
                            setState(() {
                              
                            });
                          } else {}
                        },
                        butonTxt: 'signup'),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: color,
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 

  Future<void> signup(BuildContext context) async {
    var auth = FirebaseAuth.instance;
    UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email!, password: password!);
  }
}
