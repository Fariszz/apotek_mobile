part of '../widgets.dart';

class MonthContainer extends StatefulWidget {
  String month;
    
  MonthContainer({Key? key, required this.month}) : super(key: key);

  @override
  State<MonthContainer> createState() => _MonthContainerState();
}

class _MonthContainerState extends State<MonthContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.month,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
