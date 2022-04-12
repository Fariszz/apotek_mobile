part of 'widgets.dart';

class MyButtomNavigationBar extends StatefulWidget {
  const MyButtomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyButtomNavigationBar> createState() => _MyButtomNavigationBarState();
}

class _MyButtomNavigationBarState extends State<MyButtomNavigationBar> {
  int _selectedIndex = 0;

  List _ListPage = [MainPage(), Consultant(), ProfilePage()];

  void _onItemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(
                    Icons.home,
                    color: mainColor,
                  )
                : Icon(
                    Icons.home,
                    color: mainColor,
                  ),
            label: 'Home'),
        new BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(
                    Icons.list,
                    color: mainColor,
                  )
                : Icon(Icons.list, color: mainColor),
            label: 'Consultant'),
        new BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Icon(
                    Icons.person,
                    color: mainColor,
                  )
                : Icon(Icons.person, color: mainColor),
            label: 'Profile'),
      ],
      currentIndex: _selectedIndex,
      onTap: (_selectedIndex) {
        switch (_selectedIndex) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/consultant-list');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/profile');
            break;
        }
      },
    );
  }
}
