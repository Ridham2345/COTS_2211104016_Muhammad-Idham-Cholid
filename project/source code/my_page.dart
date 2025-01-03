import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Find services, food, or places",
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Gopay Section
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Rp 43.434",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "12 XP to your next treasure",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    const Icon(Icons.qr_code, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _GopayIcon(icon: Icons.add, label: "Top Up"),
                    _GopayIcon(icon: Icons.payment, label: "Pay"),
                    _GopayIcon(icon: Icons.explore, label: "Explore"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Services Section
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              _ServiceIcon(icon: Icons.motorcycle, label: "GoRide"),
              _ServiceIcon(icon: Icons.local_dining, label: "GoFood"),
              _ServiceIcon(icon: Icons.shopping_cart, label: "GoMart"),
              _ServiceIcon(icon: Icons.delivery_dining, label: "GoSend"),
              _ServiceIcon(icon: Icons.local_taxi, label: "GoCar"),
              _ServiceIcon(icon: Icons.local_offer, label: "Promo"),
              _ServiceIcon(icon: Icons.more_horiz, label: "More"),
            ],
          ),

          const SizedBox(height: 20),

          // Promos Section
          const Text(
            "Restos near me",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          _PromoCard(
            imageUrl: 'assets/img/promo1.png',
            title: "Makin Seru",
            description: "Aktifkan sambungkan Gopay di Tokopedia",
          ),
          _PromoCard(
            imageUrl: 'assets/img/promo2.png',
            title: "Makin Seru",
            description: "Sambungkan akun ke Tokopedia, banyak untung!",
          ),
          _PromoCard(
            imageUrl: 'assets/img/promo3.png',
            title: "Bayar Apa Aja",
            description: "Lebih hemat pakai Gopay!",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Personal",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
        ],
      ),
    );
  }
}

class _GopayIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _GopayIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

class _ServiceIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ServiceIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.green),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _PromoCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const _PromoCard({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}