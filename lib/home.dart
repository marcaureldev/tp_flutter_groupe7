import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height =  MediaQuery.of(context).size.height;//renvoie des infos sur la taille de l'écran
    return Scaffold(
      body: Container(
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/paysage.jpg',

                )
            )

        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.green.withOpacity(0.5),
                        Colors.yellow.withOpacity(0.5),
                        Colors.red.withOpacity(0.5),
                      ]
                  )
              ),
              height: height/2,
            ),
            Expanded(
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
          ),
          child: Text('Clique',
            style: TextStyle(
              fontWeight: FontWeight.bold,//mettre l'écrit en gras
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

}