import 'package:flutter/material.dart';
import 'package:tf/screen/login_screen.dart';
import '../const.dart';
import '../widget/app_bar_model.dart';
import '../widget/items_list_horizontal.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();
  static const  String routeName="HomeScreen";
 static ScrollController? scrollController =ScrollController();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: HomeScreen.scrollController,
      slivers: [
        SliverAppBar(
          toolbarHeight: 82,

          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            IconButton(onPressed: () {
              Navigator.pushReplacementNamed(context,LoginScreen.routeName);
            }, icon: const Icon(Icons.logout))
          ],
          pinned: true,
          centerTitle: true,
          title: const AppBarModel(),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal:8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: const Color(0xffe5e6ef),
                borderRadius: BorderRadiusDirectional.circular(25)),
            child: const Row(
              children: [
                Icon(Icons.search),
                Text(
                  "Search",
                  style: TextStyle(color: Color(0xffa3a2a9),fontSize: 18,fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ItemsListHorizontal(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverList.separated(
          // itemCount: itemData.length,
            itemBuilder: (BuildContext context, int i) {
              // print(index);
              int index = i % itemData.length;
              return ListTile(
                leading: FittedBox(
                    fit: BoxFit.fill,
                    child: SizedBox(
                        width:MediaQuery.of(context).size.width*.2,
                        child: itemData[index].image)),
                title: Text(itemData[index].title.substring(0, 10)),
                subtitle: Row(
                  children: [
                    Text(itemData[index].subtitle),
                    const SizedBox(width: 20),
                    Text(itemData[index].time),
                  ],
                ),
                trailing: Icon(
                  index % 3 == 0 ? itemData[index].icon : Icons.check_circle,
                  size: 30,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 15)),
      ],
    );
  }
}
