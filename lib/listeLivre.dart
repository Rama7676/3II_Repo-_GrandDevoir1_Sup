import 'package:flutter/material.dart';
import 'livre.dart';

class ListeLivrePage extends StatefulWidget {
  const ListeLivrePage({super.key});

  @override
  State<ListeLivrePage> createState() => _ListeLivrePageState();
}

class _ListeLivrePageState extends State<ListeLivrePage> {
  final List<Livre> bibliotheque = [
    Livre(
      "science.jpg",
      "Les secrets de la science",
      "Ibrahim Konaté",
      2023,
      1500,
    ),
    Livre(
      "business.jpg",
      "Réussir dans le business",
      "Aïcha Traoré",
      2022,
      2000,
    ),
    Livre(
      "japon.jpg",
      "Découvrir le Japon",
      "Hiro Tanaka",
      2021,
      1800,
    ),
    Livre(
      "philo.jpg",
      "La philosophie expliquée",
      "Mamadou Diallo",
      2024,
      1200,
    ),
    Livre(
      "afrique.jpg",
      "Histoire de l’Afrique",
      "Cheick Oumar Diarra",
      2020,
      2500,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 121, 218),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.collections_bookmark, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'Abdoul TOGOLA Book',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: bibliotheque.length,
        itemBuilder: (context, index) {
          final livre = bibliotheque[index];

          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/${livre.image}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          livre.nom,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Auteur : ${livre.auteur}',
                          style: const TextStyle(fontSize: 13),
                        ),
                        Text(
                          'Année : ${livre.annee} • Prix : ${livre.prix} FCFA',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
