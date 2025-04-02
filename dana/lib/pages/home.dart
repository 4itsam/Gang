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
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              banner(),
              SizedBox(height: 20),
              searchBar(),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Memmbers", style: TextStyle(fontSize: 24)),
                ),
              ),
              listMembers(),
              SizedBox(height: 20),
              Container(
                height: 230,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 226, 208, 152),
                ),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 33, 33, 33),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              horimodels[index].image,
                              scale: 18,
                            ),
                          ),
                          Text(
                            "Contributes",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          GestureDetector(
                            onTap: () {
                              _showDialog(context, index);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 110, 110, 110),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(Icons.play_arrow, size: 20,color:  Color.fromARGB(255, 184, 184, 184),),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: horimodels.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container listMembers() {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => _bottomInfoMembers(context, index),
            child: Container(
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
            ),
          );
        },
        separatorBuilder: (BuildContext context, int item) {
          return SizedBox(width: 10);
        },
        itemCount: horimodels.length,
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
    enableDrag: false,
    showDragHandle: true,

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

void _bottomInfoMembers(BuildContext context, index) {
  Scaffold.of(context).showBottomSheet(
    enableDrag: false,
    showDragHandle: true,
    sheetAnimationStyle: AnimationStyle(
      duration: Duration(seconds: 1),
      reverseDuration: Duration(seconds: 1),
    ),
    backgroundColor: const Color.fromARGB(0, 255, 255, 255),
    (context) => Container(
      height: 440,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: horimodels[index].boxColor,
            blurRadius: 80,
            blurStyle: BlurStyle.normal,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: horimodels[index].boxColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(horimodels[index].image, scale: 5),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      horimodels[index].name,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      horimodels[index].jobPosition,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 172, 172, 172),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                horimodels[index].description,
                style: TextStyle(
                  color: const Color.fromARGB(255, 131, 131, 131),
                  fontSize: 16,
                ),
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
                  icon: Icon(
                    Icons.interests,
                    color: horimodels[index].boxColor,
                  ),
                  label: Text(
                    "Number",
                    style: TextStyle(color: horimodels[index].boxColor),
                  ),
                ),

                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.interests,
                    color: horimodels[index].boxColor,
                  ),
                  label: Text(
                    "Telegram",
                    style: TextStyle(color: horimodels[index].boxColor),
                  ),
                ),

                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.interests,
                    color: horimodels[index].boxColor,
                  ),
                  label: Text(
                    "LinkedIN",
                    style: TextStyle(color: horimodels[index].boxColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 35,
              width: 200,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "close",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: horimodels[index].boxColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    ),
  );
}

void _showDialog(BuildContext context, index) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text(horimodels[index].name,style: TextStyle(color: Colors.white),),
          backgroundColor: horimodels[index].boxColor,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
  );
}
