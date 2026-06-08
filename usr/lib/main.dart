import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vibrant Poster Data',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PosterScreen(),
      },
    );
  }
}

class PosterScreen extends StatelessWidget {
  const PosterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> posterData = [
      {
        'title': 'Nebula',
        'subtitle': 'Stellar Nursery',
        'value': '84%',
        'colors': [Colors.purple.shade700, Colors.deepPurple.shade900],
        'icon': Icons.auto_awesome,
      },
      {
        'title': 'Pulsar',
        'subtitle': 'Neutron Star',
        'value': '92%',
        'colors': [Colors.blue.shade600, Colors.indigo.shade900],
        'icon': Icons.blur_on,
      },
      {
        'title': 'Quasar',
        'subtitle': 'Active Galaxy',
        'value': '76%',
        'colors': [Colors.pink.shade600, Colors.red.shade900],
        'icon': Icons.flare,
      },
      {
        'title': 'Supernova',
        'subtitle': 'Stellar Explosion',
        'value': '99%',
        'colors': [Colors.orange.shade600, Colors.deepOrange.shade900],
        'icon': Icons.whatshot,
      },
      {
        'title': 'Black Hole',
        'subtitle': 'Singularity',
        'value': '100%',
        'colors': [Colors.grey.shade800, Colors.black],
        'icon': Icons.tonality,
      },
      {
        'title': 'Comet',
        'subtitle': 'Icy Body',
        'value': '45%',
        'colors': [Colors.cyan.shade600, Colors.blueGrey.shade900],
        'icon': Icons.nights_stay,
      },
      {
        'title': 'Asteroid',
        'subtitle': 'Rocky Remnant',
        'value': '32%',
        'colors': [Colors.brown.shade600, Colors.grey.shade900],
        'icon': Icons.terrain,
      },
      {
        'title': 'Planet',
        'subtitle': 'Orbital Body',
        'value': '88%',
        'colors': [Colors.green.shade600, Colors.teal.shade900],
        'icon': Icons.public,
      },
      {
        'title': 'Galaxy',
        'subtitle': 'Star System',
        'value': '95%',
        'colors': [Colors.amber.shade600, Colors.brown.shade900],
        'icon': Icons.bubble_chart,
      },
      {
        'title': 'Meteor',
        'subtitle': 'Falling Star',
        'value': '60%',
        'colors': [Colors.redAccent.shade400, Colors.purple.shade900],
        'icon': Icons.flash_on,
      },
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.deepPurple.shade900,
              Colors.indigo.shade900,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      'COSMIC DATA',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 8,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'REDUCED 2×5 VISUALIZATION',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 4,
                        color: Colors.purple.shade200,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      // Adjust cross axis count based on screen width
                      int crossAxisCount = constraints.maxWidth > 600 ? 5 : 2;
                      
                      return GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          childAspectRatio: constraints.maxWidth > 600 ? 0.8 : 0.85,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: posterData.length, // 10 items for 2x5
                        itemBuilder: (context, index) {
                          final item = posterData[index];
                          return _buildPosterCard(item, index);
                        },
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'DESIGNED FOR EXTRAORDINARY CLARITY',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 2,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPosterCard(Map<String, dynamic> item, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: item['colors'],
        ),
        boxShadow: [
          BoxShadow(
            color: item['colors'][0].withOpacity(0.3),
            blurRadius: 12,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            // Abstract pattern background
            Positioned(
              right: -20,
              top: -20,
              child: Icon(
                item['icon'],
                size: 120,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '0${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Icon(
                        item['icon'],
                        color: Colors.white,
                        size: 32,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item['subtitle'],
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            item['value'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
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
