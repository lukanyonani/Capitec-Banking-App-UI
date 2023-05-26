import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF009DE0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const Text(
                    'for me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  color: const Color(0xFF009DE0),
                  onPressed: () {},
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      "lib/images/banner.jpg",
                      width: double.infinity,
                    ),
                  ),
                  const Text(
                    'Lukanyo',
                    style: TextStyle(
                      color: Color(0xFF353446),
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xFF009DE0),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF353446),
                            width: 2,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 412,
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      children: [
                        _buildCard(
                            Icons.smartphone_outlined, 'Buy prepaid mobile'),
                        _buildCard(Icons.lightbulb_outline, 'Buy electricity'),
                        _buildCard(Icons.people_outline, 'Pay beneficiary'),
                        _buildCard(Icons.swap_horiz_outlined, 'Transfer money'),
                        _buildCard(Icons.phone_outlined, 'Track money'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF009DE0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 64, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                height: kBottomNavigationBarHeight + 40,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF009DE0),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: const Icon(
                              Icons.qr_code_scanner,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                        const Text(
                          "Scan to Pay",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }

  Widget _buildCard(IconData iconData, String text) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 48, color: const Color(0xFF009DE0)),
          const SizedBox(height: 16),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF353446),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
