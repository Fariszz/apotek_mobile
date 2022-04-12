part of '../widgets.dart';

class HoursContainer extends StatefulWidget {
  String hour;
  HoursContainer({Key? key, required this.hour}) : super(key: key);
  @override
  State<HoursContainer> createState() => _HoursContainerState();
}

class _HoursContainerState extends State<HoursContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: Text(
            widget.hour,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
    );
  }
}

// Container(
//           margin: const EdgeInsets.only(top: 8),
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: Colors.black12),
//             boxShadow: const [
//               BoxShadow(
//                 color: Colors.black12,
//                 offset: Offset(2, 4),
//                 blurRadius: 2,
//               ),
//             ],
//           ),
//           child: Text(widget.hour,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         ))