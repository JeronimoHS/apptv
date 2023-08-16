import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dpad_container/dpad_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CatalogScreen(),
    );
  }
}

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  int? selectedIndex;
  int? onFocusIndex;

  final List<String> _images = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
    'assets/images/banner4.jpg',
    'assets/images/banner5.jpg',
    'assets/images/banner6.jpg',

    // Lista de imágenes de animes
  ];

  final List<Map<String, dynamic>> contentList = [
    {
      'name': 'Nombre  1',
      'image': 'assets/images/content1.jpg',
      'genre': 'Acción',
    },
    {
      'name': 'Nombre contenido  2',
      'image': 'assets/images/content2.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre contenido  3',
      'image': 'assets/images/content3.jpg',
      'genre': 'Comedia',
    },
    {
      'name': 'Nombre contenido  4',
      'image': 'assets/images/content4.jpg',
      'genre': 'Comedia',
    },
    {
      'name': 'Nombre contenido  5',
      'image': 'assets/images/content5.jpg',
      'genre': 'Acción',
    },
    {
      'name': 'Nombre contenido  6',
      'image': 'assets/images/content6.jpg',
      'genre': 'Romance',
    },
    {
      'name': 'Nombre contenido  7',
      'image': 'assets/images/content7.jpg',
      'genre': 'Mecha',
    },
    {
      'name': 'Nombre contenido  8',
      'image': 'assets/images/content8.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre contenido  9',
      'image': 'assets/images/content9.jpeg',
      'genre': 'Acción',
    },
    {
      'name': 'Nombre contenido 10',
      'image': 'assets/images/content10.jpg',
      'genre': 'Comedia',
    },
    {
      'name': 'Nombre contenido 11',
      'image': 'assets/images/content11.jpeg',
      'genre': 'Acción',
    },
    {
      'name': 'Nombre contenido 12',
      'image': 'assets/images/content12.jpg',
      'genre': 'Aventura',
    },
    {
      'name': 'Nombre contenido 13',
      'image': 'assets/images/content13.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre contenido 14',
      'image': 'assets/images/content14.jpg',
      'genre': 'Aventura',
    },
    {
      'name': 'Nombre contenido 15',
      'image': 'assets/images/content15.jpg',
      'genre': 'Tragedia',
    },
    {
      'name': 'Nombre contenido 16',
      'image': 'assets/images/content16.jpg',
      'genre': 'Acción',
    },
    {
      'name': 'Nombre contenido 17',
      'image': 'assets/images/content17.jpg',
      'genre': 'Aventura',
    },
    {
      'name': 'Nombre contenido 18',
      'image': 'assets/images/content18.jpg',
      'genre': 'Comedia',
    },
    {
      'name': 'Nombre contenido 19',
      'image': 'assets/images/content19.jpg',
      'genre': 'Comedia',
    },
    {
      'name': 'Nombre contenido 20',
      'image': 'assets/images/content20.jpg',
      'genre': 'Acción',
    },
    {
      'name': 'Nombre contenido 21',
      'image': 'assets/images/content21.jpg',
      'genre': 'Acción',
    },
    {
      'name': 'Nombre contenido 22',
      'image': 'assets/images/content22.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre contenido 23',
      'image': 'assets/images/content23.jpg',
      'genre': 'Tragedia',
    },
    {
      'name': 'Nombre contenido 24',
      'image': 'assets/images/content24.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre Acontenido 25',
      'image': 'assets/images/content25.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre contenido 26',
      'image': 'assets/images/content26.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre contenido 27',
      'image': 'assets/images/content27.jpg',
      'genre': 'Drama',
    },
    {
      'name': 'Nombre contenido 28',
      'image': 'assets/images/content28.jpg',
      'genre': 'Romance',
    },
  ];

  List<dynamic> getGenres() {
    // Obtener lista de géneros únicos de animeList
    return contentList.map((content) => content['genre']).toSet().toList();
  }

  List<dynamic> getContentImagesByGenre(String genre) {
    // Filtrar las imágenes por género
    return contentList
        .where((content) => content['genre'] == genre)
        .map((content) => content['image'])
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Visualizador de contenido',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: CarouselSlider(
              items: _images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return AspectRatio(
                      aspectRatio: 4 / 1,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 4 / 1,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: getGenres().length,
              itemBuilder: (ctx, i) {
                final genre = getGenres()[i];
                final genreImages = getContentImagesByGenre(genre);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        genre,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: genreImages.length,
                        itemBuilder: (ctx, i) {
                          final image = genreImages[i];
                          return DpadContainer(
                            onClick: () => setState(() => selectedIndex = i),
                            onFocus: (bool isFocused) => setState(
                                () => onFocusIndex = isFocused ? i : null),
                            child: ImageCard(
                              image: image,
                              focus: onFocusIndex == i,
                              selected: selectedIndex == i,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final bool selected;
  final bool focus;
  final String image;

  const ImageCard({
    Key? key,
    required this.selected,
    required this.image,
    required this.focus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 300, // Tamaño de las imágenes MAS GRANDESSSS
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: focus ? Colors.white : Colors.black,
          border: Border.all(
            color: focus
                ? Colors.white
                : (selected ? Colors.blue.shade400 : Colors.black),
            width: 5,
          ),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
