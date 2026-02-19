import 'package:flutter/material.dart';
import 'pet.dart';
class PetCard extends StatelessWidget {

  final Pet pet;

  const PetCard({super.key, required this.pet});
  @override
  Widget build(BuildContext context) {
    return   Card(
              margin: EdgeInsets.only(bottom: 10),
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

