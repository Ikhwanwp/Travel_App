part of 'pages.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical, //arah scrolling vertical (kebawah)
          itemCount: images
              .length, //Jumlah item (images.length = panjang itemnya disesuaikan dengan list images)
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite, //lebar maksimum
              height: double.maxFinite, //tinggi maksimum
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("img/" + images[index]),
                alignment: Alignment.bottomCenter,
              )),
              child: Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore",
                          style: blackFontStyle,
                        ),
                        Text(
                          "The World",
                          style: greyFontStyle1,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            "Explore the world and have an unforgettable experience",
                            style: greyFontStyle2,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(
                          width: 120,
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? mainColor
                                  : mainColor.withOpacity(0.3)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
