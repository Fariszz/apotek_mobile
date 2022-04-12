part of 'pages.dart';

class DetailDoctor extends StatelessWidget {
  const DetailDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(slivers: <Widget>[
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("Mental Health Specialist",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Schedule",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, height: 1.5)),
              // create listview horizontal for schedule
              Container(
                height: 30,
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MonthContainer(month: "JAN"),
                    MonthContainer(month: "FEB"),
                    MonthContainer(month: "MAR"),
                    MonthContainer(month: "APR"),
                    MonthContainer(month: "MAY"),
                    MonthContainer(month: "JUN"),
                    MonthContainer(month: "JUL"),
                    MonthContainer(month: "AUG"),
                    MonthContainer(month: "SEP"),
                    MonthContainer(month: "OCT"),
                    MonthContainer(month: "NOV"),
                    MonthContainer(month: "DEC"),
                  ],
                ),
              ),
              Container(
                // create box listview horizontal for date and day
                height: 70,
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DateContainer(day: "MON", date: "15"),
                    DateContainer(day: "THU", date: "16"),
                    DateContainer(day: "TUE", date: "17"),
                    DateContainer(day: "WED", date: "18"),
                    DateContainer(day: "THU", date: "19"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HoursContainer(hour: "08:00"),
                  HoursContainer(hour: "10:00"),
                  HoursContainer(hour: "12:00"),
                ],
              ),
              SizedBox(height: 16),
              Text("Message",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                width: double.infinity,
                height: 5 * 24.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Enter a message",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                ),
                child: const Text(
                  "Make an Appointment",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        )
      ]))
    ]));
  }
}
