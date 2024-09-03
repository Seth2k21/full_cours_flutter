import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widget/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //menu text
          Container(
             padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54,),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),

              ],

            ),
          ),
          SizedBox(height: 50,),
            //discover text
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover",),
            ),
          SizedBox(height: 50,),
          // tabbar
          Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(

                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: CircleTabInsicator(color: AppColors.mainColor, radius: 4),
                  tabs: const [
                    Tab(text:"Places"),
                    Tab(text:"Inspiration"),
                    Tab(text:"Emotions"),
                  ],
                ),
              ),

          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                     return
                       Container(
                         margin: const EdgeInsets.only(left: 20, top: 10),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                    image: AssetImage(
                    "img/img1.jpg",
                    ),
                    fit:BoxFit.cover
                    )
                    ),
                    );

                  },

                ),
                Text("There"),
                Text("Bye"),

              ],
            ),
          )
        ],
      ),
    );
  }
}


class CircleTabInsicator extends Decoration{
  final Color color;
  double radius;
  CircleTabInsicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
        return _CirclePainter(color:color, radius:radius);
  }

}

class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset,
      ImageConfiguration configuration) {
      Paint _paint = Paint();
      _paint.color=color;
      _paint.isAntiAlias=true;
      final Offset circleOffset = Offset(configuration.size!.width/2 -radius/2, configuration.size!.height);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}
