part of 'widgets.dart';

class CategoryCard extends StatelessWidget {
  String title;
  Color color;
  CategoryCard({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: 160,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: color),
      child: Center(
          child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18))),
    );
  }
}