import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Color(0xFFFFCC28),
                  height: 100,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/back.png',
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "FLOWERS",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Discover the beauty of flowers',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 30),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/bee.png'),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Logan',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle follow action
                          },
                          child: Text('Follow'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFCC28),
                            foregroundColor: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/flower.jpg',
                      height: 300,
                      width: 600,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Flowers are one of nature’s most beautiful and diverse creations, captivating humans for centuries with their vibrant colors, intricate shapes, and delightful fragrances. They play a crucial role in ecosystems, serving as the reproductive structures of flowering plants. Through the process of pollination, flowers facilitate the production of seeds, ensuring the continuation of plant species.\n\n'
                        'The variety of flowers is astounding, with over 400,000 species identified worldwide. Each species has unique characteristics, from the towering sunflowers that can reach heights of over 10 feet to the delicate and tiny blossoms of the forget-me-not. Flowers can be found in nearly every habitat on Earth, from the arid deserts where cacti bloom to the lush rainforests teeming with orchids.\n\n'
                        'Flowers have significant cultural and symbolic meanings across different societies. In many cultures, they are used to convey emotions and messages. For example, red roses are universally recognized as symbols of love and passion, while white lilies are often associated with purity and remembrance. In Japan, the cherry blossom, or sakura, is celebrated as a symbol of the fleeting nature of life, with festivals dedicated to viewing these beautiful blooms.\n\n'
                        'Beyond their aesthetic and symbolic value, flowers have practical uses as well. Many flowers are edible and are used in culinary dishes around the world. Nasturtiums, violets, and marigolds can add color and flavor to salads, while lavender and rose petals are often used in desserts and beverages. Additionally, flowers are a source of essential oils and natural remedies. Lavender oil, for instance, is known for its calming properties, and chamomile flowers are commonly used to make soothing teas.\n\n'
                        'In summary, flowers are not only a feast for the eyes but also play vital roles in nature, culture, and everyday life. Their beauty and diversity continue to inspire and enchant people around the globe.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle report action
                          },
                          child: Text('Report'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle like action
                          },
                          child: Text('Like'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle share action
                          },
                          child: Text('Share'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle share action
                          },
                          child: Text('Save'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Some more articles from Logan.',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        for (int i = 0; i < 6; i++)
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Image.asset(
                                      'assets/flower.jpg',
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          i == 0
                                              ? 'The Beauty of Nature'
                                              : i == 1
                                                  ? 'The Science of Cooking'
                                                  : i == 2
                                                      ? 'Wildflower Wonders'
                                                      : i == 3
                                                          ? 'The Art of Gardening'
                                                          : i == 4
                                                              ? 'Blooming History'
                                                              : 'Floral Symbolism',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          i == 0
                                              ? 'An overview of nature’s breathtaking landscapes and their significance.'
                                              : i == 1
                                                  ? 'An exploration of the techniques and principles that make cooking both an art and a science.'
                                                  : i == 2
                                                      ? 'A look at the fascinating diversity of wildflowers and their habitats.'
                                                      : i == 3
                                                          ? 'Insights into the creative process of designing and maintaining a garden.'
                                                          : i == 4
                                                              ? 'Discovering the historical significance of flowers across cultures.'
                                                              : 'Understanding the meanings behind various flowers and their uses in different contexts.',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
