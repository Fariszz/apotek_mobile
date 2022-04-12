part of 'pages.dart';

enum PaymentMethod { dana, mandiri }

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  PaymentMethod? _paymentMethod = PaymentMethod.dana;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          // create back button
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: false,
          floating: true,
          snap: false,
          pinned: true,
          titleSpacing: 0,
          shadowColor: Colors.transparent,
          expandedHeight: 246,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
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
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text("Mental Health Specialist",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                // create name center
              ],
            ),
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(top: defaultMargin)),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            margin: const EdgeInsets.symmetric(
                vertical: defaultMargin, horizontal: defaultMargin),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: Color(0xffffffff).withOpacity(0.39),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Appointment Cost",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("Rp. 50000",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Admin Fee",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("Rp. 2500",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Total",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("Rp. 52500",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: Color(0xffffffff).withOpacity(0.39),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Payment Options",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio<PaymentMethod>(
                        value: PaymentMethod.dana,
                        groupValue: _paymentMethod,
                        onChanged: (PaymentMethod? value) {
                          setState(() {
                            _paymentMethod = value;
                          });
                        }),
                    const Text("Dana",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio<PaymentMethod>(
                        value: PaymentMethod.mandiri,
                        groupValue: _paymentMethod,
                        onChanged: (PaymentMethod? value) {
                          setState(() {
                            _paymentMethod = value;
                          });
                        }),
                    const Text("Mandiri",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: defaultMargin,
          ),
          // create bottom button
          Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SuccessPage();
                    },
                  ),
                );
              },
              child: const Text(
                "Pay Now",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ])),
      ],
    ));
  }
}
