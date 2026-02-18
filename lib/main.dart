import 'package:flutter/material.dart';
import 'pet.dart';
import 'petcard.dart';

void main() {
  runApp(MaterialApp(
    home: CardHolder(),
  ));
}

class CardHolder extends StatefulWidget {
  const CardHolder({super.key});

  @override
  State<CardHolder> createState() => _CardHolderState();
}

class _CardHolderState extends State<CardHolder> {
  final List<Pet> pets= [
    Pet(name: 'Satan',animal: 'Sin of Wrath'),
    Pet(name: 'Lucifer',animal: 'Sin of Pride'),
    Pet(name: 'Mammon',animal: 'Sin of Greed'),
    Pet(name: 'Belzebub', animal: "Sin of Gluttony"),
    Pet(name: 'Asmodeus', animal: 'Sin of Lust'),
    Pet(name: 'Leviathan', animal: 'Sin of Envy'),
    Pet(name: 'Belphegor', animal: 'Sin of Sloth'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets Information'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: pets.map((pet) => PetCard(pet: pet)).toList()
      ),
      )


    );
  }
}

