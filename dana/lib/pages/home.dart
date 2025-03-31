import 'package:dana/models/horizontalModels.dart';
import 'package:flutter/material.dart';

List<Horizontalmodels> horimodels = [];
void _getHorizontalModels() {
  horimodels = Horizontalmodels.getHoriz();
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _getHorizontalModels();
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 208, 152),
      appBar: appBar(),
      body: Column(
        children: [
          banner(),
          SizedBox(height: 20),
          searchBar(),
          SizedBox(height: 20),
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: horimodels[index].boxColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            horimodels[index].image,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      Text(
                        horimodels[index].name,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        horimodels[index].jobPosition,
                        style: TextStyle(
                          color: const Color.fromARGB(134, 255, 255, 255),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int item) {
                return SizedBox(width: 10);
              },
              itemCount: horimodels.length,
            ),
          ),
        ],
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.normal,
            blurRadius: 4,
            color: Color.fromARGB(155, 33, 33, 33),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        cursorHeight: 16,
        cursorColor: Colors.white,
        cursorWidth: 1,

        decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 33, 33, 33),
          filled: true,
          focusColor: const Color.fromARGB(255, 255, 98, 7),
          hintFadeDuration: Duration(seconds: 1),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 2,
              color: const Color.fromARGB(255, 46, 46, 46),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 2,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          hintStyle: TextStyle(
            color: const Color.fromARGB(48, 204, 204, 204),
            fontSize: 12,
          ),

          hoverColor: Color.fromARGB(255, 41, 41, 41),
          contentPadding: const EdgeInsetsDirectional.only(
            bottom: 50,
            start: 20,
          ),
          hintText: "Serach in Dakto products",
        ),
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Padding banner() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 33, 33, 33),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Builder(
            builder: (context) {
              return Center(
                child: TextButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () => _bottomSheet(context),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Row(
                          spacing: 20,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dakto",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),

                            Icon(Icons.android, color: Colors.white, size: 55),
                          ],
                        ),
                      ),
                      Text(
                        "Multy platform apps",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar appBar() => AppBar(
    automaticallyImplyLeading: false,
    title: Builder(
      builder: (context) {
        return GestureDetector(
          onLongPress: () => _snackBar(context),
          child: Text("Dakto", style: TextStyle(fontWeight: FontWeight.w500)),
        );
      },
    ),
    backgroundColor: Color.fromARGB(255, 226, 208, 152),
  );
}

void _bottomSheet(BuildContext context) {
  Scaffold.of(context).showBottomSheet(
    backgroundColor: const Color.fromARGB(0, 255, 255, 255),
    sheetAnimationStyle: AnimationStyle(
      reverseDuration: Duration(seconds: 1),
      duration: Duration(seconds: 1),
    ),

    (context) => Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          color: const Color.fromARGB(255, 33, 33, 33),
        ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dakto",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),

                  Icon(Icons.android, color: Colors.white, size: 55),
                ],
              ),
            ),
            Text(
              "Multy platform apps",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 30),
            Row(
              spacing: 0.5,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.interests),
                  label: Text("Instagram"),
                ),

                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.interests),
                  label: Text("Telegram"),
                ),

                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.interests),
                  label: Text("linkedIN"),
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 35,
              width: 200,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text("close"),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void _snackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("Secret Property unlucked"),
      backgroundColor: Colors.deepOrange,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.none,
      closeIconColor: Colors.white,
      showCloseIcon: true,
    ),
  );
}
