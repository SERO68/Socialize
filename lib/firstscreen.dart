import 'package:flutter/material.dart';
import 'register.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
              Color.fromRGBO(43, 11, 171, 1),
              Color.fromRGBO(92, 81, 193, 1)
            ])),
        child: SafeArea(
          child: Column(
            children: [
              const Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Socialize',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'logo',
                              fontSize: 50),
                        )
                      ])),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Image(image: AssetImage('images/first.png')),
                      const Text(
                        'Explore your interests\n with others',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'fonthead2'),
                        textAlign: TextAlign.center,
                      ),
                      LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(245, 229, 236, 239)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), 
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                  Size(constraints.maxWidth - 40, 40)),
                              maximumSize: MaterialStateProperty.all(
                                  Size(constraints.maxWidth, 40)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            child: const Text(
                              'Get Started',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ));
                      }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
