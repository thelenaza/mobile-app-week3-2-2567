import 'package:flutter/material.dart';

class ListMenu{
  final String? title;
  final String? subtitle;
  final IconData? icon;
  const ListMenu({this.title,this.subtitle,this.icon});
}

List<ListMenu> menus = [
  const ListMenu(title: 'MENU-1' ,subtitle :'MENU-2',icon: Icons.person),
  const ListMenu(title: 'MENU-2' ,subtitle :'MENU-2',icon: Icons.email),
  const ListMenu(title: 'MENU-3' ,subtitle :'MENU-2',icon: Icons.class_),
  const ListMenu(title: 'MENU-4' ,subtitle :'MENU-2',icon: Icons.calculate),
];

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(itemBuilder: (context, index) {
          return  ListTile(
            title: Text("${menus[index].title}"),
            subtitle: Text("${menus[index].subtitle}"),
            leading: CircleAvatar(child: Icon(menus[index].icon),),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              debugPrint(menus[index].title);
              if (Navigator.canPop(context)) {
                Navigator.pop(context,menus[index].title);
              }
            },
          );
        }, separatorBuilder: (context, index) {
          return const Divider(color: Colors.pinkAccent,);
        }, itemCount: 4),
      ),
    );
  }
}
