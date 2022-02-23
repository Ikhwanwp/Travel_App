part of 'navpages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Menu and Photo
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), color: mainColor),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Discover
          Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Discover',
              style: blackFontStyle,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Tabbar
          Container(
            // margin: EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: mainColor,
                  unselectedLabelColor: greyColor2,
                  isScrollable: true,
                  indicator: CircleTabIndicator(color: mainColor, radius: 4),
                  tabs: [
                    Tab(
                      text: 'Places',
                    ),
                    Tab(
                      text: 'Inspirations',
                    ),
                    Tab(
                      text: 'Emotions',
                    ),
                  ]),
            ),
          ),
          // Tabbar View
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(controller: _tabController, children: [
              Text('Tab Places'),
              Text('Tab Inspirations'),
              Text('Tab Emotions'),
            ]),
          )
        ],
      )),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double? radius;
  CircleTabIndicator({required this.color, this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double? radius;
  _CirclePainter({required this.color, this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius! / 2,
        configuration.size!.height - radius!);
    canvas.drawCircle(offset + circleOffset, radius!, _paint);
  }
}
