part of 'navpages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var categories = {
    'hiking.png': 'Hiking',
    'rafting.png': 'Rafting',
    'skiing.png': 'Ski',
    'surfing.png': 'Surfing',
    'skydiving.png': 'Sky Diving',
    'wingsuit.png': 'Wingsuit',
    'mountain-bike.png': 'Mountain Bike',
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            // Discover
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'D',
                        style: blackFontStyle1.copyWith(color: mainColor),
                      ),
                      Text(
                        'iscover',
                        style: blackFontStyle1,
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage('img/person.png'),
                            fit: BoxFit.cover),
                        color: mainColor),
                  )
                ],
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
                    unselectedLabelColor: lightGreyColor,
                    isScrollable: true,
                    indicator: CircleTabIndicator(color: mainColor, radius: 4),
                    tabs: [
                      Tab(
                        text: 'Popular',
                      ),
                      Tab(
                        text: 'Indonesia',
                      ),
                      Tab(
                        text: 'Japan',
                      ),
                    ]),
              ),
            ),
            // Tabbar View
            Container(
              padding: EdgeInsets.only(left: 20),
              // margin: EdgeInsets.only(left: 20),
              width: double.maxFinite,
              height: 300,
              // color: Colors.red,
              child: TabBarView(controller: _tabController, children: [
                ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15, top: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('img/mountain.jpeg'))),
                    );
                  },
                ),
                Text('Tab Inspirations'),
                Text('Tab Emotions'),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore more',
                    style: blackFontStyle2,
                  ),
                  Text(
                    'see all',
                    style: greyFontStyle2,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: double.maxFinite,
              height: 200,
              child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10, right: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: 'F3F4F8'.toColor(),
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage('img/' +
                                      categories.keys.elementAt(index)),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              categories.values.elementAt(index),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
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
