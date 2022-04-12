part of 'widgets.dart';

class CategoryCard extends StatefulWidget {
  String title;
  Color color;
  CategoryCard({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: 160,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: widget.color),
      child: Center(
          child: Text(widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18))),
    );
  }
}