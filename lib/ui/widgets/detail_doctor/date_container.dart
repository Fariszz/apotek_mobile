part of '../widgets.dart';

class DateContainer extends StatefulWidget {
  String day;
  String date;

  DateContainer({Key? key, required this.day, required this.date})
      : super(key: key);

  @override
  State<DateContainer> createState() => _DataContainerState();
}

class _DataContainerState extends State<DateContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.all(8),
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.day,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(widget.date,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
