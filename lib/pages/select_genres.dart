import 'package:flutter/material.dart';
import 'package:buzine/pages/home_page.dart';

void main() {
  runApp(const GenreSelectionApp());
}

class GenreSelectionApp extends StatelessWidget {
  const GenreSelectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GenreSelectionPage(),
    );
  }
}

class GenreSelectionPage extends StatefulWidget {
  const GenreSelectionPage({super.key});

  @override
  _GenreSelectionPageState createState() => _GenreSelectionPageState();
}

class _GenreSelectionPageState extends State<GenreSelectionPage> {
  List<String> selectedGenres = [];

  final List<String> genres = [
    "Nature",
    "Tech",
    "Fashion",
    "Health",
    "Wellness",
    "Travel",
    "Culture",
    "Pop",
    "Science",
    "Culinary",
    "Business",
    "Arts",
    "Social",
    "Music",
    "Film",
    "Sports",
    "Trends",
    "Garden",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 50.0, left: 25.0, right: 25.0), // Add padding at the top
        child: Column(
          children: [
            const Text(
              "Tell us what you're into",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              "Tap once on the genres you like",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: genres.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedGenres.contains(genres[index]);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedGenres.remove(genres[index]);
                        } else {
                          selectedGenres.add(genres[index]);
                        }
                      });
                    },
                    child: Transform.scale(
                      scale: isSelected ? 1.2 : 1.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xffffcc28)
                              : Colors.transparent,
                          border: Border.all(
                            color: const Color(0xffffcc28),
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: isSelected
                              ? [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: const Offset(0, 4),
                                  ),
                                ]
                              : null,
                        ),
                        child: Center(
                          child: Text(
                            genres[index],
                            style: TextStyle(
                              fontSize: 10,
                              color: isSelected ? Colors.black : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffffcc28),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  "Select Genres",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
