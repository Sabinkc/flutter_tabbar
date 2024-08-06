import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(controller: _tabController, tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
          ])),
      body: TabBarView(controller: _tabController, children: [
        Center(child: Text("Homes creen")),
        Center(child: Text("Setting screen")),
        Center(child: Text("Notification screen"))
      ]),
    );
  }
}





// Using DefaultTabController
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("TabBar"),
//           centerTitle: true,
//           bottom: TabBar(tabs: [
//             Tab(
//               icon: Icon(Icons.home),
//               text: "Home",
//             ),
//             Tab(
//               icon: Icon(Icons.settings),
//               text: "settings",
//             ),
//             Tab(
//               icon: Icon(Icons.notifications),
//               text: "Notifications",
//             )
//           ]),
//         ),
//         body: TabBarView(children: [
//           Center(child: Text("Home")),
//           Center(child: Text("Settings")),
//           Center(child: Text("Notification")),
//         ]),
//       ),
//     );
//   }
// }
