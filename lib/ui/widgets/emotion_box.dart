part of 'widgets.dart';

class EmotionBox extends StatelessWidget {
  String textEmot;
  String emotDescription;
  EmotionBox({
    Key? key,
    required this.textEmot,
    required this.emotDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white54, borderRadius: BorderRadius.circular(16)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              textEmot,
              style: TextStyle(fontSize: 36),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          emotDescription,
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        )
      ],
    );
  }
}
