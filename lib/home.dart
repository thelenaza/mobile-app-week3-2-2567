import 'package:flutter/material.dart';
import 'package:flutter_week2/widgets/row_page.dart';
import 'package:flutter_week2/widgets/column_page.dart';
import 'package:flutter_week2/widgets/list_view_menu.dart';
import 'package:flutter_week2/widgets/card_demo.dart';
import 'package:flutter_week2/widgets//my_card1.dart';
import 'package:flutter_week2/screens/setState.dart';
import 'package:flutter_week2/widgets/counter_page.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("Home"),
        ),
      drawer: Drawer(
        child: ListView(
          children: [
           const UserAccountsDrawerHeader(
                accountName: Text("Leena"),
                accountEmail: Text("leena07@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage('https://static1.thegamerimages.com/wordpress/wp-content/uploads/2024/07/one-piece-luffy-inherit-the-will-of-d-on-manga-pages.jpg'),
              //    child: Icon(Icons.android),
                )
            ),
            ListTile(
              leading: Icon((Icons.home)),
              title: Text('Home'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
                debugPrint("Home page");
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('Row'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
                debugPrint("Row widget");
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('Column'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
                debugPrint("Column widget");
              },
            ),
            ListTile(
              leading: Icon((Icons.apps)),
              title: Text('List view menu'),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewMenu(),
                  ),
                );
                debugPrint("List view widget $result");
              },
            ),
            ListTile(
              leading: const Icon((Icons.credit_score)),
              title: const Text('Card & Inkwell widget'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
                debugPrint("'Card & Inkwell widget");
              },
            ),
            ListTile(
              leading: const Icon((Icons.credit_card)),
              title: const Text('My Card'),
              onTap: ()async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
                debugPrint("My Card");
              },
            ),
            ListTile(
              leading: const Icon((Icons.library_add)),
              title: const Text('SetState'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SetStateDemo(),
                  ),
                );
                debugPrint("SetState");
              },
            ),
            ListTile(
              leading: const Icon((Icons.countertops)),
              title: const Text('Counter App'),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterPage(name: "เคาท์เตอร์",),
                  ),
                );
                debugPrint("Counter App");
              },
            ),
            Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.indigo,
            )
          ],
        ),
      ),
      body: const Center(
          child: Text("MyApp"),
        ),
    );
  }
}