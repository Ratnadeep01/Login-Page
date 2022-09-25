import 'package:abcde/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

String username = "";
String password = "";
bool changebutton = false;
final _formKey = GlobalKey<FormState>();

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}
class _LoginpageState extends State<Loginpage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
        child: Column(
          children: [Image.asset("assets/images/login.png",
          fit: BoxFit.cover,
          ),
            SizedBox(
              height: 20,
            ),
            Text("Welcome $username", style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 32),
            child:Form(
              key: _formKey,
              child: Column(
                children: [
                   TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged:(text) {
                        setState(() {
                          username = text;
                        });
                      },
                     validator: (Username){
                       if(username == ""){
                         return "Username is required";
                       }
                       return null;
                     },

                    ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                      onChanged:(text) {
                        setState(() {
                          password = text;
                        });
                      },
                    validator: (value){
                      if(password == ""){
                        return "Password is required";
                      }
                      if(password.length < 6) {
                        return "Min. 6 characters are required";
                      }
                      return null;
                    },

                  ),
              SizedBox(
                height: 40.0,
              ),

              Material(
                borderRadius: changebutton ? BorderRadius.circular(60) : BorderRadius.circular(8),
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.blue.shade50,
                  onTap: () async {
                    if(_formKey.currentState!.validate()){
                    setState(() {
                    changebutton = true;
                        });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.HomeRoutes);
                    setState(() {
                      changebutton = false;
                    });

                    }
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40,
                    width: changebutton ? 50:150,
                    alignment: Alignment.center,
                    child: changebutton ?Icon(Icons.done, color: Colors.white,) : Text('Login', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                  ),
                ),
              ),
            ],
           ),
            ),
        ),
            ],
        ),
        ),
      ),
    );
  }
}
