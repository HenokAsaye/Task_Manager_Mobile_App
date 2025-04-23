import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final nameController = TextEditingController();




    @override
    void dispose(){
      emailController.dispose();
      passwordController.dispose();
      nameController.dispose();
      super.dispose();
    }
    return Scaffold(
      body:Padding(
          padding: EdgeInsets.all(16),
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Sign Up.",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize:50,
                fontWeight:FontWeight.bold
              )
            ),

            SizedBox(height: 16),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText:'',
                labelText: 'Full Name',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black, width:2)
                )
              ),
            ),
            SizedBox(height:10),
            TextFormField(
              controller: emailController,
              decoration:InputDecoration(
                hintText:"",
                labelText:"Email",
                border:OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color:Colors.black, width:2)
                )
              )
            ),
            SizedBox(height:10),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "",
                labelText:"Password",
                border:OutlineInputBorder(
                  borderSide: BorderSide(color:Color(0xFFD3D3D3) )
                ),
                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color:Colors.black,width:2)
                )
              ),
            ),
            SizedBox(height:20),
            ElevatedButton(onPressed: (){},
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding:EdgeInsets.symmetric(horizontal:30,vertical: 20),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              elevation: 5
            ),
             child:Text(
                "Sign Up",
                textAlign:TextAlign.center,
                style:TextStyle(
                  fontSize: 15
                )
             )

             )
          ],
      )
      )
,
    );
  }
}