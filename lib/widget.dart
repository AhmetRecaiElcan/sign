import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../pages/home.dart';

// Page Decoration
PageDecoration pageDecoration(Color? color) {
  return PageDecoration(
    pageColor: color,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.w500,
    ),
    bodyTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w300,
    ),
  );
}

// Get Start Button
Padding getStartButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 0),
    child: MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      onPressed: () {
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => HomePage()));
      },
      minWidth: 320,
      height: 50,
      color: Colors.white,
      child: Text(
        "Hadi Başlayalım!",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

// Dots Decoration
DotsDecorator DotsDecoration() {
  return DotsDecorator(
      size: const Size.square(8.0),
      activeColor: Colors.white,
      activeSize: const Size(30.0, 8.0),
      color: Colors.white,
      spacing: const EdgeInsets.symmetric(horizontal: 3.0),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)));
}

// List of Pages
List<PageViewModel> getPages(context) {
  return [
    PageViewModel(
        decoration: pageDecoration(Color(0xffFFAF4E)),
        body:
            "Mükemmel bir uygulama kitap takasla hadi hemen başlayalım...",
        title: "Hadi Başlayalım",
        image: Image.asset(
          'assets/images/1.png',
        )),
    PageViewModel(
        decoration: pageDecoration(Color(0xffFFBE97)),
        body:
            "Tamamen ücretseiz ve bir o kadar kolay arayüzü ile uygulamaya kaydolun!",
        title: "Kar gütmeyen bir kuruluş",
        image: Image.asset(
          'assets/images/2.png',
        )),
    PageViewModel(
        decoration: pageDecoration(Color(0xff1FB090)),
        body:
            "Verileriniz Google firebase ile güvende",
        title: "Gizlilik",
        image: Image.asset(
          'assets/images/3.png',
        ),
        footer: getStartButton(context)),
  ];
}

// Global Footer
Container globalFooter() {
  return Container(
    width: double.infinity,
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          width: 180,
          height: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              print("Login Button Tapped!");
            },
            child: Text("Giriş Yap"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
              backgroundColor: MaterialStateProperty.all(Color(0xff1FB090)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: 180,
          height: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              print("Sign Up Button Tapped!");
            },
            child: Text("Kaydol"),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
                backgroundColor: MaterialStateProperty.all(Color(0xffFFBE97))),
          ),
        )
      ],
    ),
  );
}

// Skip Button Text
Text skipText() {
  return Text(
    "Atla",
    style: TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
  );
}

// Next Button Text
Row nextText() {
  return Row(
    children: [
      Text(
        "İleri",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      Icon(
        Icons.arrow_forward_ios_rounded,
        size: 20,
        color: Colors.white,
      )
    ],
  );
}
