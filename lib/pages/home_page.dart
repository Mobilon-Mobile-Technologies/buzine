import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:myapp/assets/logo.png';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // App logo (replace with your actual logo widget)
                    Image.asset(
                      'assets/images/logo.png',
                      height: 40, // Adjust height as needed
                    ),

                    // Filter button
                    IconButton(
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {
                        // Handle filter button press
                      },
                    ),
                  ],
                )),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        imageUrl:
                                            'https://picsum.photos/${800 + index}/${(index % 2 + 1) * 970}'),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://picsum.photos/${800 + index}/${(index % 2 + 1) * 970}',
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => AspectRatio(
                                    aspectRatio:
                                        (800 + index) / ((index % 2 + 1) * 970),
                                    child: Container(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.more_horiz,
                                size: 20,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Home Button
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home_page');
                      print('Home button pressed');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.house,
                      color: Color(0xFFffcc28),
                    ),
                    label: const Text(''), // Empty label for spacing
                  ),

                  // Search Button with primary color
                  TextButton.icon(
                    onPressed: () {
                      // Handle search button press action
                      print('Search button pressed');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: Color(0xFFffcc28),
                    ),
                    label: const Text(''), // Empty label for spacing
                  ),

                  // Plus Button with primary color
                  TextButton.icon(
                    onPressed: () {
                      // Handle plus button press action
                      print('Plus button pressed');
                    },
                    icon: const Icon(
                      FontAwesomeIcons.plus,
                      color: Color(0xFFffcc28),
                    ),
                    label: const Text(''), // Empty label for spacing
                  ),

                  // Bookmark Button with primary color
                  TextButton.icon(
                    onPressed: () {
                      // Handle bookmark button press action
                      print('Bookmark button pressed');
                    },
                    icon: const Icon(
                      CupertinoIcons.bookmark,
                      color: Color(0xFFffcc28),
                    ),
                    label: const Text(''), // Empty label for spacing
                  ),

                  // Profile Button with image
                  FloatingActionButton.small(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile_page');
                      print('Profile button pressed');
                    },
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Theme.of(context).primaryColor,
                      backgroundImage: const CachedNetworkImageProvider(
                          'https://picsum.photos/100'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
