import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de contatos - NP3 - TR6 - Stateless',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
      home: const Lists(),
    );
  }
}

class Lists extends StatelessWidget {
  const Lists({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Lista de contatos - NP3 - TR6 - Stateless',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
          backgroundColor: Colors.pink,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 120,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.pink,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Text(
                                  'Anna Carolina Lima de Souza',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'RA: 1431432312015',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
        body: (SingleChildScrollView(
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(50),
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        name: 'Julia rodrigues',
                        image: 'https://source.unsplash.com/random/?girl',
                        ra: '1431432001',
                        tel: '(11) 9002-8922',
                      ),
                      SizedBox(height: 40),
                      Card(
                        name: 'Marcelo',
                        image: 'https://source.unsplash.com/random/?men',
                        ra: '1431432002',
                        tel: '(11) 95562-9988',
                      ),
                      SizedBox(height: 40),
                      Card(
                        name: 'Vinicius Morais',
                        image: 'https://source.unsplash.com/random/?boy,black',
                        ra: '1431432003',
                        tel: '(11) 9123-4567',
                      ),
                      SizedBox(height: 40),
                      Card(
                        name: 'Melissa Souza',
                        image: 'https://source.unsplash.com/random/?woman',
                        ra: '1431432004',
                        tel: '(11) 99876-5432',
                      ),
                      SizedBox(height: 40),
                      Card(
                        name: 'Julia rodrigues',
                        image: 'https://source.unsplash.com/random/?girl',
                        ra: '1431432001',
                        tel: '(11) 9002-8922',
                      ),
                      SizedBox(height: 40),
                      Card(
                        name: 'Marcelo',
                        image: 'https://source.unsplash.com/random/?men',
                        ra: '1431432002',
                        tel: '(11) 95562-9988',
                      ),
                      SizedBox(height: 40),
                      Card(
                        name: 'Vinicius Morais',
                        image: 'https://source.unsplash.com/random/?boy,black',
                        ra: '1431432003',
                        tel: '(11) 9123-4567',
                      ),
                      SizedBox(height: 40),
                      Card(
                        name: 'Melissa Souza',
                        image: 'https://source.unsplash.com/random/?woman',
                        ra: '1431432004',
                        tel: '(11) 99876-5432',
                      )
                    ])))));
  }
}

class Card extends StatelessWidget {
  const Card(
      {super.key,
      required this.name,
      required this.image,
      required this.ra,
      required this.tel});
  final String name;
  final String image;
  final String ra;
  final String tel;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'RA: $ra',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              RichText(
                text: TextSpan(
                  text: 'Telefone: $tel',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
