import 'package:flutter/material.dart';
import 'pet.dart';
void main() {
  runApp( MaterialApp(
    home: CardHolder(),
  ));
}
class CardHolder extends StatefulWidget {
  const CardHolder({super.key});

  @override
  State<CardHolder> createState() => _CardHolderState();
}

class _CardHolderState extends State<CardHolder> {
  List<Pet> pets= [
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
      body: Padding(padding: EdgeInsetsGeometry.fromLTRB(20, 30, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: pets.map((pet) => Container(
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
          ).toList(),
      ),
      )


    );
  }
}

