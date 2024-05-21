import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({
    Key? key,
    required this.showLoginPage,
    }) : super(key: key);

  @override
  State <RegisterPage> createState() =>  RegisterPageState();
}

class  RegisterPageState extends State <RegisterPage> {

  //Tesxt controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
         child: SingleChildScrollView(
          child:  Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Icon(
              Icons.phone_android,
              size:75,
            ),
            SizedBox(height:50),
        //Hello again
          Text(
            'Hola de Nuevo',
            style: GoogleFonts.bebasNeue(
              fontSize: 52,
            ),
        ),
        SizedBox(height: 10),
        Text(
            'Registrate aquí con tus datos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
        ),
        SizedBox(height: 50),

        //email textfield
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(12),
              ),
                hintText: 'Email',
                fillColor: Colors.grey[200],
                filled: true,
              ),

            ),
           
          ),
          
        SizedBox(height: 10),
        
        //password textfield
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            obscureText: true,
            controller: _passwordController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(12),
              ),
                hintText: 'Password',
                fillColor: Colors.grey[200],
                filled: true,
              ),

            ),
           
          ),
          
        SizedBox(height: 10),

        //sign in button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: GestureDetector(
            onTap: signUp,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
             color: Colors.deepPurple,
             borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child:Text(
              '',
              style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,

              
              ),

            ),
          ),
          ),
          ),
        ),
        SizedBox(height: 25),

        
        //not a member? register now
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No eres miembro?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: widget.showRegisterPage,
              child: Text(
              ' Registrate Ahora',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ],
          ),
         
         ]),
      ),
    ), 
    ),
    );
  }
}