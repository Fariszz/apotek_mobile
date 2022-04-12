part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.only(left: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hi, Reviewer',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '27, Mar 2022',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ],
                ),
              ),
              centerTitle: false,
              floating: true,
              snap: false,
              pinned: true,
              titleSpacing: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: defaultMargin,
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                          'https://akcdn.detik.net.id/community/media/visual/2019/09/09/73175fe7-5902-4cf8-a4cd-ef333d955056_43.jpeg'),
                    ),
                  ),
                )
              ],
              shadowColor: Colors.transparent,
              expandedHeight: 446,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultMargin, vertical: 64),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 64, bottom: 46),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white54,
                                hintText: 'Search',
                                prefixIcon: const Icon(Icons.search),
                                disabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'How do you feel today ?',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: defaultMargin,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              EmotionBox(
                                emotDescription: 'Badly',
                                textEmot: '😔',
                              ),
                              EmotionBox(
                                emotDescription: 'Fine',
                                textEmot: '😊',
                              ),
                              EmotionBox(
                                emotDescription: 'Well',
                                textEmot: '😁',
                              ),
                              EmotionBox(
                                emotDescription: 'Excellent',
                                textEmot: '😃',
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              )),
          const SliverPadding(padding: EdgeInsets.only(top: defaultMargin)),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Next Consultation', style: header1List),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/consultant-list');
                        },
                        child: const Text('View All',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.green)),
                      )
                    ],
                  )
                ],
              ),
            )
          ])),
          SliverList(
            delegate: SliverChildBuilderDelegate((_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: defaultMargin),
                child: ConsultantCard(),
              );
            }, childCount: 3),
          )
        ],
      ),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
