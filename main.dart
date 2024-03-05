import 'package:activity4/About.dart';
import 'package:activity4/Homepage.dart';
import 'package:activity4/MyAccount.dart';
import 'package:activity4/News.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes:{
        '/':(context) => const Login(),
        '/Homepage':(context) => const Homepage(),
        '/News' :(context) => const News(),
        '/About' :(context) => const About(),
        '/MyAccount' :(context) => const MyAccount(),

      }
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[50],
        child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.whatshot_outlined, color: Colors.amber,),
                  Text('FERNANDEZ', style:TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text('Good to see you again', style:TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
              Container(
                width: 800,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Your email'),
                          const SizedBox(height: 10,),
                          Container(
                            child: const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Elon@gmail.com',
                              ),
                            ),
                          ),
                        ],
                      ),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your password'),
                          SizedBox(height: 10,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'ElonsBuns',
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 500,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(20))
                          ),
                        
                          child: Center(
                           child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                  onPressed: () {
                    print('Signed in');
                    Navigator.pushNamed(context, '/Homepage');
                  },
                  child: const Text('Sign in'),
                ),          
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Dont have an account?', style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline, decorationColor: Colors.blue,
                            ),
                          ),
                          Text('Forgot password?', style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline, decorationColor: Colors.blue,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child:
                         Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                ),
                              child: const Icon(
                                Icons.man,
                                color: Colors.purple,),
                              ),
                            const Text('KWFinder',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                             ),
                            ),
                          ],
                        ),
                      ), 
                      Container(
                        child:
                         Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                ),
                              child: const Icon(
                                Icons.man,
                                color: Colors.pink,),
                              ),
                            const Text('SERPChecker',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                             ),
                            ),
                          ],
                        ),
                      ), 
                      Container(
                        child:
                         Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                ),
                              child: const Icon(
                                Icons.man,
                                color: Colors.yellow,),
                              ),
                            const Text('SERPWatcher',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                             ),
                            ),
                          ],
                        ),
                      ), 
                      Container(
                        child:
                         Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                ),
                              child: const Icon(
                                Icons.man,
                                color: Colors.red,),
                              ),
                            const Text('LinkMiner',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                             ),
                            ),
                          ],
                        ),
                      ), 
                      Container(
                        child:
                         Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                ),
                              child: const Icon(
                                Icons.man,
                                color: Colors.blue,
                              ),
                              ),
                            const Text('SiteProfiler',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                             ),
                            ),
                          ],
                        ),
                      ),
                    ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
