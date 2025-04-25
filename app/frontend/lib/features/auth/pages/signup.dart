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
    final formKey = GlobalKey<FormState>();
    @override
    void dispose(){
      emailController.dispose();
      passwordController.dispose();
      nameController.dispose();
      super.dispose();
    }



    void signUpUser(){
      if(formKey.currentState!.validate()){
        ///////
      }
    }
    return Scaffold(
      body:Padding(
          padding: EdgeInsets.all(16),
          child:Form(
            key:formKey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Sign Up.",
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontSize:50,
                  fontWeight:FontWeight.bold,
                  fontStyle: FontStyle.italic
                )
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText:'Full Name',
                  contentPadding: const EdgeInsets.all(20),
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(
                        color:Colors.grey.shade300,
                        width:2
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5
                    ),
                    borderRadius: BorderRadius.circular(10)
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
                ),
                validator:(value){
                  if(value == null || value.trim().isEmpty){
                    return "Full Name Field is Required";
                  }else{
                    return null;
                  }
                }
              ),
              SizedBox(height:10),
              TextFormField(
                controller: emailController,
                decoration:InputDecoration(
                  hintText:"Email",
                  contentPadding:const EdgeInsets.all(20),
                  enabledBorder:OutlineInputBorder(
                      borderSide:BorderSide(
                        color:Colors.grey.shade300,
                        width:2
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
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color:Colors.black, width:1.5)
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
              ElevatedButton(onPressed: signUpUser,
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding:EdgeInsets.symmetric(horizontal:30,vertical: 20),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
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
               ),
            
              SizedBox(height:20),
              Center(
                child: RichText(
                text:
                  TextSpan(text:'Already have an Account?',
                    style:Theme.of(context).textTheme.titleMedium,
                    children:[
                      TextSpan(
                        text:"Sign In",
                        style: TextStyle(
                          fontWeight:FontWeight.bold,
                        )
                      )
                  ]
                  )
                  ),
              )
            ],
                  ),
          )
      )
    );
  }
}