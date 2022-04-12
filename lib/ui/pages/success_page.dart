part of 'pages.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // create center image and button bottom
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // create image
          Container(
            margin: const EdgeInsets.only(top: 64, bottom: defaultMargin),
            width: 110,
            height: 110,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn-2.tstatic.net/jatim/foto/bank/images/tyuzu-twice_20180706_152713.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text("Dr. Chou Tzuyu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text("Selamat Bertemu...",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          // create button
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Selesai',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
