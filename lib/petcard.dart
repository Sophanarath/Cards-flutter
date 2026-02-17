import 'package:flutter/material.dart';
import 'pet.dart';
class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pets Information'),
          centerTitle: true,
          backgroundColor: Colors.grey[200],
        ),
        body: Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child:  Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[900],
              ),
              child:
              Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${pet.name}'),
                  Text('${pet.animal}'),
                ],
              ),
            ),
            ),


    );
  }
  }

