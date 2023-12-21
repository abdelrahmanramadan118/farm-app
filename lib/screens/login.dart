import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../models/AuthService.dart';
import '../models/cart.dart';
import '../models/userModel.dart';
import '../widgets/customfield.dart';
import '../widgets/buton.dart';
import '../widgets/undermessage.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;
  String? password;

  bool isladding = false;
  final AuthService _auth = AuthService();
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isladding,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: scolor),
          backgroundColor: const Color(0xff66B343),
          title: Text(
            'Login',
            style: TextStyle(
              color: scolor,
              fontFamily: 'Cherly',
              fontSize: 25,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
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
                SizedBox(
                  height: 10,
                ),
                Buton(
                  ontap: () async {
                    if (formkey.currentState!.validate()) {
                      setState(() {
                        isladding = true;
                      });
                      try {
                        await login(context);
                      } catch (e) {
                        undermessage(context, 'email or password is wrong');
                      }
                      setState(() {
                        isladding = false;
                      });
                    } else {}
                  },
                  butonTxt: 'login',
                ),
                SizedBox(height: 16.0),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        color: color,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login(BuildContext context) async {
   var auth = FirebaseAuth.instance;
  try {
    final UserCredential user = await auth.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );

    // Set the user in your CartModel
     final UserModel userModel = UserModel(user: user.user!,email: user.user!.email!,cart: []);
     final CartModel cartModel = CartModel();
    // Load the user's cart data
    await context.read<CartModel>().loadCartData();

    undermessage(context, 'Success');
    Navigator.pushNamed(context, 'home');
  } catch (e) {
    undermessage(context, 'Email or password is wrong');
  } finally {
    setState(() {
      isladding = false;
    });
  }
  }
}
