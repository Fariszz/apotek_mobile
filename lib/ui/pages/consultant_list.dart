// ignore_for_file: prefer_const_literals_to_create_immutables

part of 'pages.dart';

class Consultant extends StatelessWidget {
  const Consultant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi, Reviewer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
          expandedHeight: 216,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: defaultMargin, right: defaultMargin, top: 46),
                      child: Column(children: [
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
                      ])))
            ]),
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(top: defaultMargin)),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(children: [
                Row(
                  children: [
                    Text("Category", style: header1List),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(title: "Mental Health", color: Colors.red),
                      CategoryCard(title: "Physical", color: Colors.blue),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Consultant", style: header1List),
                      ],
                    ),
                  ],
                )
              ]))
        ])),
        SliverList(
            delegate: SliverChildBuilderDelegate((_, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin, vertical: defaultMargin),
              child: ConsultantCard());
        }, childCount: 3))
      ]),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
