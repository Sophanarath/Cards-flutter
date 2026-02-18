import 'package:flutter/material.dart';
import 'pet.dart';
class PetCard extends StatelessWidget {

  final Pet pet;

  const PetCard({super.key, required this.pet});
  @override
  Widget build(BuildContext context) {
    return   Container(
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
                  Text(pet.name),
                  Text(pet.animal)
                ],
              )
              );
  }
}

