import 'package:flutter/material.dart';

void main() {
  runApp(const MyBoard());
}

class MyBoard extends StatelessWidget {
  const MyBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek Slider Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WelcomeSliderScreen(),
    );
  }
}

class WelcomeSliderScreen extends StatefulWidget {
  const WelcomeSliderScreen({super.key});

  @override
  State<WelcomeSliderScreen> createState() => _WelcomeSliderScreenState();
}

class _WelcomeSliderScreenState extends State<WelcomeSliderScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> sliderData = [
    {
      "image": "assets/images/gojek.png",
      "title": "Selamat datang di gojek!",
      "description":
          "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun.",
    },
    {
      "image": "assets/images/gojek2.png", // Path gambar untuk halaman kedua
      "title": "Transportasi & logistik",
      "description":
          "Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang.",
    },
    {
      "image": "assets/images/gojek3.png", // Path gambar untuk halaman ketiga
      "title": "Pesan makan & belanja",
      "description": "Mau pesen sesuatu? Gojek lebih cepat, nggak pakai lama.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: sliderData.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      sliderData[index]["image"]!,
                      height: 200,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      sliderData[index]["title"]!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        sliderData[index]["description"]!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              sliderData.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 8,
                width: _currentPage == index ? 16 : 8,
                decoration: BoxDecoration(
                  color: _currentPage == index ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      // Logika untuk tombol "Masuk"
                    },
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Logika untuk tombol "Daftar"
                  },
                  child: const Text(
                    'Belum ada akun?, Daftar dulu',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Dengan masuk atau mendaftar, kamu menyetujui\nKetentuan layanan dan Kebijakan privasi.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
