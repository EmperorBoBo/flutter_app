import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldRoute extends StatefulWidget {
  @override
  State createState() {
    return _ScaffoldRouteState();
  }
}

class _ScaffoldRouteState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  List tabs = ["新闻", "历史", "图片"];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态栏"),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.dashboard, color: Colors.redAccent),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.local_shipping),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), title: Text("钱包")),
          BottomNavigationBarItem(
              icon: Icon(Icons.markunread), title: Text("邮件")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepOrange,
        onTap: _onItemTaped,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "添加",
        onPressed: _onAdd,
      ),
    );
  }

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}

///侧滑栏
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipOval(
                child: Image.asset(
                  "imgs/icon_nav_1.png",
                  width: 80,
                ),
              ),
            ),
            Text(
              "AA",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(leading: const Icon(Icons.details),title: Text("三角形"),),
                  ListTile(leading: const Icon(Icons.close),title: Text("错号"),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
