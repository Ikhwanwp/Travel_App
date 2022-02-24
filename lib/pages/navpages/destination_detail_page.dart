part of 'navpages.dart';

class DestinationDetailPage extends StatefulWidget {
  const DestinationDetailPage({Key? key}) : super(key: key);

  @override
  _DestinationDetailPageState createState() => _DestinationDetailPageState();
}

class _DestinationDetailPageState extends State<DestinationDetailPage> {
  List numbers = [1, 5, 10, 15, 20, 25, 30];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   color: mainColor,
          // ),
          // SafeArea(child: Container(color: Colors.white)),
          // Untuk gambar
          SafeArea(
              child: Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/mountain.jpeg'), fit: BoxFit.cover)),
          )),
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 250),
                    // height: 500,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: lightGreyColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Semeru',
                                  style: blackFontStyle2,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                    Text('Malang',
                                        style: blackFontStyle2.copyWith(
                                            color: Colors.red, fontSize: 13))
                                  ],
                                ),
                                Wrap(
                                  children: List.generate(
                                      5,
                                      (index) => Icon(
                                            Icons.star,
                                            color: mainColor,
                                            size: 18,
                                          )),
                                )
                              ],
                            ),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  'IDR ',
                                  style: blackFontStyle2.copyWith(
                                      fontSize: 20, color: mainColor),
                                ),
                                Text(
                                  '250.000',
                                  style: blackFontStyle2.copyWith(fontSize: 20),
                                )
                              ],
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Container(
                          width: double.maxFinite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'People',
                                style: blackFontStyle2,
                              ),
                              Text(
                                'Number of people in your group',
                                style: blackFontStyle3,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 60,
                                width: double.maxFinite,
                                child: ListView.builder(
                                    itemCount: 7,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_, index) {
                                      return Container(
                                        margin: EdgeInsets.only(right: 20),
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: 'F3F4F8'.toColor(),
                                        ),
                                        child: Center(
                                            child: Text(
                                          numbers[index].toString(),
                                          style: blackFontStyle1,
                                        )),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: double.maxFinite,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Description',
                                      style: blackFontStyle2,
                                    ),
                                    Text(
                                      'Amet commodo quis esse fugiat adipisicing ullamco voluptate et fugiat est in. Duis qui ea et consectetur labore sint. Sint est sunt sint enim adipisicing nisi cupidatat sunt nostrud dolore incididunt non.',
                                      style: blackFontStyle3,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: 'F3F4F8'.toColor()),
                                    child: Icon(Icons.link),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 257,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: mainColor),
                                    child: Center(
                                      child: Text(
                                        'Book Trip Now',
                                        style: blackFontStyle2.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
