import 'package:flutter/material.dart';
import 'package:medhub/profile_page.dart';
import 'home_page.dart';
import 'palette.dart';

class CustomAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Container(
        height: preferredSize.height,
        color: Color(0xFF4743FF),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.logout,
                  color: Colors.white,),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder:(context) => HomePage(),));
                }),
            Text.rich(TextSpan(
              text: 'Welcome back, Piezas!',
              style: MedMiniHeadingWhite,
            )),
            IconButton(
                icon: Icon(Icons.person,
                  color: Colors.white,),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder:
                        (context) => ProfilePage() ,));
                }
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MainPageBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 36.0, right: 36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[600].withOpacity(0.15),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search_rounded,
                            color: Color(0xFFA0A0A0),),
                          hintText: 'Search for brand or name',
                          hintStyle: MedHintTexts,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReminderCard(),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 143.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 141.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/order_pres_widget.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            width: 141.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/favorite_widget.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height: 10,),
                    Text.rich(TextSpan(
                      text: 'Categories',
                      style: MedMiniHeading,
                    ),),
                    Container(
                      height: 100.0,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            child: ConstrainedBox(constraints: BoxConstraints.expand(),
                              child: FlatButton(onPressed: null,
                                child: Image.asset('assets/pain_relief.png',
                                  height: 400,
                                  width: 400,),),
                            ),
                          ),
                          Container(
                            width: 150.0,
                            child: ConstrainedBox(constraints: BoxConstraints.expand(),
                              child: FlatButton(onPressed: null,
                                child: Image.asset('assets/cough_icon.png',
                                  height: 400,
                                  width: 400,),),
                            ),
                          ),
                          Container(
                            width: 150.0,
                            child: ConstrainedBox(constraints: BoxConstraints.expand(),
                              child: FlatButton(onPressed: null,
                                child: Image.asset('assets/allergies_icon.png',
                                  height: 400,
                                  width: 400,),),
                            ),
                          ),
                          Container(
                            width: 150.0,
                            child: ConstrainedBox(constraints: BoxConstraints.expand(),
                              child: FlatButton(onPressed: null,
                                child: Image.asset('assets/colds_icon.png',
                                  height: 400,
                                  width: 400,),),
                            ),
                          ),
                          Container(
                            width: 150.0,
                            child: ConstrainedBox(constraints: BoxConstraints.expand(),
                              child: FlatButton(onPressed: null,
                                child: Image.asset('assets/vitamins_icon.png',
                                  height: 400,
                                  width: 400,),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height: 10,),
                    Text.rich(TextSpan(
                      text: 'Allergies',
                      style: MedMiniHeading,
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      height: 152.0,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/allerta.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/virlix.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/benadryl.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/claritin.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text.rich(TextSpan(
                      text: 'Cough & Colds',
                      style: MedMiniHeading,
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      height: 152.0,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bioflu.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/solmux.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/robitussin.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bisolvon.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text.rich(TextSpan(
                      text: 'Fever & Pain Reliever',
                      style: MedMiniHeading,
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      height: 152.0,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/advil.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/alvedon.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/tylenol.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 135.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/biogesic.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                )
            ),
          ),
        ),
      ],
    );
  }
}


class MainPageBackground extends StatelessWidget {
  const MainPageBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/main_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CartIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/cart_icon.png');
    Image image = Image(
      image: assetImage,
      width: 10,);
    return Container(child:image);
  }
}

class ReminderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/reminder_card.png');
    Image image = Image(
      image: assetImage,
      width: 800,);
    return Container(child:image);
  }
}

class OrderPrescription extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/order_pres_widget.png');
    Image image = Image(
      image: assetImage,
      width: 141,);
    return Container(child:image);
  }
}

class Favorites extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/favorites_widget.png');
    Image image = Image(
      image: assetImage,
      width: 141,);
    return Container(child:image);
  }
}

class PainReliever extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/pain_relief_icon.png');
    Image image = Image(
      image: assetImage,
      width: 15,);
    return Container(child:image);
  }
}

class OrdersIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/orders_icon.png');
    Image image = Image(
      image: assetImage,
      width: 25,);
    return Container(child:image);
  }
}

class HomeIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/home_icon.png');
    Image image = Image(
      image: assetImage,
      width: 44,);
    return Container(child:image);
  }
}

class RemindersIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/reminder_icon.png');
    Image image = Image(
      image: assetImage,
      width: 25,);
    return Container(child:image);
  }
}
