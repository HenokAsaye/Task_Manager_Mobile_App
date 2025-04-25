import 'package:flutter/material.dart';
import 'package:frontend/features/auth/pages/signup.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();


    @override
    void dispose(){
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }


    void signInUser(){
      if(formKey.currentState!.validate()){
        //
      }
    }
    return Scaffold(
      body:Padding(
        padding:EdgeInsets.all(16),
        child:Form(
          key:formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              Text(
                "Sign in",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:50,
                  fontWeight:FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height:16),
              TextFormField(
                controller:emailController,
                decoration: InputDecoration(
                  hintText:'Email',
                  contentPadding: const EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.grey.shade300,
                      width:1.5
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  border:OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.grey.shade300,
                      width:1.5
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.red,
                      width:1.5
                    ),
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                validator: (value){
                  if(value== null || value.trim().isEmpty || !value.contains("@")){
                      return "please Enter Valid Email";
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height:10),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  contentPadding:EdgeInsets.all(20),
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(
                      color:Colors.grey.shade300,
                      width:1.5
                    ),
                    borderRadius:BorderRadius.circular(10)
                  ),
                  border:OutlineInputBorder(
                     borderSide: BorderSide(
                      width: 1.5
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  errorBorder:OutlineInputBorder(
                      borderSide:BorderSide(
                      color:Colors.red,
                      width:1.5
                    ),
                    borderRadius:BorderRadius.circular(10)
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color:Colors.black,width:1.5)
                  )
                ),
                validator: (value){
                  if(value== null || value.trim().isEmpty || value.trim().length <= 6 ){
                      return "please Enter Valid Password!!";
                  }else{
                    return null;
                }
                }
              ),
              SizedBox(height:20),
              ElevatedButton(onPressed:signInUser, 
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                  padding:EdgeInsets.symmetric(horizontal:30,vertical: 20),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation:5,
              ),
              child: Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              )
              ),

              SizedBox(height:20),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(SignUpPage.route());
                  },
                  child: RichText(
                  text:
                    TextSpan(text:'Don\'t have an Account?',
                      style:Theme.of(context).textTheme.titleMedium,
                      children:[
                        TextSpan(
                          text:"Sign Up",
                          style: TextStyle(
                            fontWeight:FontWeight.bold,
                          )
                        )
                    ]
                    )
                    ),
                ),
              )
            ]
          ),
        )
      )
    );
  }
}