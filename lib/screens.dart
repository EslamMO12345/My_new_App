import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:
      Scaffold( 
        appBar: AppBar( 
          backgroundColor: Colors.blueAccent,
          title: const Text('Login & signup'), 
          bottom: const TabBar(tabs: [
            Tab(text: 'Login',), 
            Tab(text: 'signup',),
          ]),
        ),

        body: const TabBarView( 
          children: [ 
            loginCard(), 
            signupCard(),
          ],
        ),
      )
    );
  }
}  
// login card
class loginCard extends StatelessWidget {
  const loginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding( 
      
      padding: const EdgeInsets.all(16.0),
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Center(
          child:  Column(  
            
            mainAxisSize: MainAxisSize.min, 
            children: [ 
              
               const TextField( 
                decoration: InputDecoration( labelText: 'Email', labelStyle: TextStyle( 
                  color: Colors.blue,
                ), 
                prefixIcon: Icon(Icons.email)), 
                
               ) ,
               const SizedBox( height: 10,), 
               const TextField( 
                decoration: InputDecoration( labelText: 'Password', labelStyle: TextStyle(
                  color: Colors.blue, 
                  
                ), 
                 prefixIcon: Icon(Icons.password),
                 suffixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
               ), 
               const SizedBox( 
                height: 30,
               ), 
               
               ElevatedButton(onPressed:(){}, child: const Text( 
                'logIn', style: TextStyle( 
                  color: Colors.black
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

// signup card 
class signupCard extends StatelessWidget {
  const signupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding( 
      
      padding: const EdgeInsets.all(16.0),
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Center(
          child:  Column(  
            
            mainAxisSize: MainAxisSize.min, 
            children: [ 
              
              const TextField( 
                decoration: InputDecoration( labelText: 'full Name', labelStyle: TextStyle( 
                  color: Colors.blue, 
                  
                ), 
                prefixIcon: Icon(Icons.person), 
                
                ), 
                
               ) ,
               const SizedBox( height: 10,), 
              const TextField( 
                decoration: InputDecoration( labelText: 'Email', labelStyle: TextStyle(
                  color: Colors.blue, 
                  
                ), 
                  prefixIcon: Icon(Icons.email),
                ),
                
               ), 
               const SizedBox( 
                height: 10,
               ), 
                const TextField( 
                decoration: InputDecoration( labelText: 'Password', labelStyle: TextStyle(
                  color: Colors.blue, 
                  
                ), 
                 prefixIcon: Icon(Icons.password),
                 suffixIcon: Icon(Icons.lock) 

                ), 
                
                obscureText: true,
               ),  
               const SizedBox(
                 height: 20,
               ),
               ElevatedButton(onPressed:(){}, child: const Text( 
                'signUp'
               ),), 
            ],
          ),
        ),
      ),
    );
  }
}