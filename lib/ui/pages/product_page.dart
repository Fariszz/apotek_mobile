part of 'pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                    EdgeInsets.only(right: defaultMargin, top: defaultMargin),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                ),
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.all(defaultMargin),
              child: const Text("Today's Read")),
          Container(
            height: 258,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 310,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 15,
                                color: Colors.black12)
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/474x/8a/f4/7e/8af47e18b14b741f6be2ae499d23fcbe.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
                            width: 200,
                            child: Text(
                              'Food',
                              style: blackFontStyle2,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 12),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: MyButtomNavigationBar(),
    );
  }
}
