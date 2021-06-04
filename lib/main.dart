import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        primarySwatch: Colors.blueGrey,
      ),
      home: Dashboard(title: 'LA Store'),
    );
  }
}

class Dashboard extends StatefulWidget {
  Dashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: ListView(
        children: [
          _profile(),
          _search(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _itemProduct(context),
              _itemProduct(context),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _itemProduct(context),
              _itemProduct(context),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _itemProduct(context),
              _itemProduct(context),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _itemProduct(context),
              _itemProduct(context),
            ],
          )
        ],
      ),
    ));
  }

  _profile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.home),
        Text(
          "LA Store",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/profile.jpg"))),
          ),
        ),
      ],
    );
  }

  _search() {
    return Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 17),
            hintText: 'Search your trips',
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(20),
          ),
        ));
  }

  // _listItem(BuildContext context) {
  //   return StaggeredGridView.countBuilder(
  //     crossAxisCount: 4,
  //     itemCount: 10,
  //     itemBuilder: (BuildContext context, int index) => _itemProduct(),
  //     staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
  //     mainAxisSpacing: 4.0,
  //     crossAxisSpacing: 4.0,
  //   );
  // }

  _itemProduct(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/proxy/kC8AdyGk4MLIBPgeKILTpJDXU2J5S9JbzrDxxylViEfwbiICgps5tpGUv5sRVY4um7gH050Z1Js4TD3bhotr_5wxFo_ePzOzrDthfjw")))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Laptop Macbook 12 Pro Max",style: GoogleFonts.poppins(
                  textStyle : TextStyle(fontWeight: FontWeight.bold,fontSize: 15)
                )),
                Text("FHD+ SSD 1 Tb"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp. 12.000.000",style: TextStyle(fontWeight: FontWeight.bold),),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ]),
                        child: Icon(
                          Icons.favorite,
                          size: 15,
                          color: Colors.white,
                        ),
                      )
                    ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
