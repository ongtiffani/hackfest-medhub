import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medhub/main.dart';
import 'package:medhub/palette.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LoginBackgroundWidget(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 128,),
                  MedHubIcon(),
                  Text.rich(TextSpan(
                    text: 'Welcome \nto MedHUB',
                    style: MedHeading,
                  )
                  ),
                  SizedBox(height: 90,),
                  Text.rich(TextSpan(
                    text: 'Email',
                    style: MedMiniHeading,
                  )
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600].withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: EmailIcon(),
                          ),
                          style: MedRealBody,
                            keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          ),
                        ),
                    ],),
                  ),
                  SizedBox(height: 15,
                  ),
                  Text.rich(TextSpan(
                    text: 'Password',
                    style: MedMiniHeading,
                  )
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600].withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: PasswordIcon(),
                          ),
                          obscureText: true,
                          style: MedRealBody,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],),
                  ),
                  SizedBox(height: 70,
                  ),
                  Container(
                    width: 141,
                    decoration: BoxDecoration(
                      color: Color(0xFF4743FF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context) => MyNavBar()
                        ));
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 36.0),
                        child: Text('Login',
                          style: MedRealBody,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}




class MainBackgroundWidget extends StatelessWidget {
  const MainBackgroundWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/main_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class LoginBackgroundWidget extends StatelessWidget {
  const LoginBackgroundWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/log_in_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MedHubIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/logo.png');
    Image image = Image(
        image: assetImage,
        width: 214);
    return Container(child:image);
  }
}

class EmailIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/email_icon.png');
    Image image = Image(
        image: assetImage,
        width: 30,);
    return Container(child:image);
  }
}

class PasswordIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/password_icon.png');
    Image image = Image(
      image: assetImage,
      width: 10,);
    return Container(child:image);
  }
}